//
//  DictionaryIterationTests.swift
//  DictionaryIterationTests
//
//  Created by Jim Campagno on 12/27/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import XCTest
@testable import DictionaryIteration

class DictionaryIterationTests: XCTestCase {
    
    var testClass = DictionaryIteration()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitialDictionary() {
        let bands = [
            "Nirvana" : "Nevermind",
            "Blondie" : "Parallel Lines",
            "The Kinks" : "Low Budget",
            "The Beatles" : "Sgt. Pepper's Lonely Hearts Club Band"
        ]
        
        XCTAssertEqual(testClass.bands, bands, "The bands variable created doesn't match.")
    }
    
    func testAddPixie() {
        testClass.addPixie()
        
        XCTAssertNotNil(testClass.bands["Pixie"])
        XCTAssertEqual(testClass.bands["Pixie"], "Doolittle", "Doolittle is the value for key Pixie.")
    }
    
    func testRemoveKinks() {
        testClass.removeKinks()
        
        XCTAssertNil(testClass.bands["The Kinks"], "The Kinks should no longer exist in the bands variable.")
    }
    
    func testNirvanaBestSeller() {
        let expectedResult = "Nirvana's top-selling album was Nevermind."
        
        XCTAssertEqual(testClass.nirvanaBestSeller(), expectedResult, "Nirvana's top-selling album was Nevermind is what should be returned.")
    }
    
    func testBestSellers() {
        let sentence = testClass.bestSellers()
        
        XCTAssertTrue(sentence.contains("The Beatles's top-selling album was Sgt. Pepper's Lonely Hearts Club Band."))
        XCTAssertTrue(sentence.contains("The Kinks's top-selling album was Low Budget."))
        XCTAssertTrue(sentence.contains("Blondie's top-selling album was Parallel Lines."))
        XCTAssertTrue(sentence.contains("Nirvana's top-selling album was Nevermind."))
    }
    
    func testTypeOfDataStructure() {
        XCTAssertEqual(testClass.typeOfDataStructure(), "Tuple")
    }
    
    func testTypeOfDataStructureForSchool() {
        XCTAssertEqual(testClass.typeOfDataStructureForSchool(), "B", "The answer is 'B'. We want our data structure to be a dictionary where the keys are of type Int representing the various grades (from 7-10). The values will be the average of the letter grades that particulare grade would have received represented by A, B, C, D, or F.")
    }
    
    func testHighestGrade() {
        let grades = [
            7 : "D",
            8 : "C",
            9 : "A",
            10 : "F"
        ]
        let expectedResult = 9
        
        XCTAssertEqual(testClass.highestGrade(grades), expectedResult, "The grade with the best results is grade 9. In comparing Strings in Swift, A < D evaluates to true.")
    }
    
}

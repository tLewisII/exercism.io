//
//  BobTests.m
//  BobTests
//
//  Created by Terry Lewis II on 7/30/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//
static NSString *whatever = @"Whatever.";
static NSString *sure = @"Sure.";
static NSString *chill = @"Whoa, chill out!";
static NSString *notAddressed = @"Fine, be that way!";
#import <XCTest/XCTest.h>
#import "Bob.h"
@interface BobTests : XCTestCase
@property (strong,nonatomic) Bob *bob;
@end

@implementation BobTests
-(void)setUp {
    [super setUp];
    self.bob = [[Bob alloc]init];
}

-(void)tearDown {
    [super tearDown];
    self.bob = nil;
}
-(void)testForcefulQuestion {
    XCTAssertEqualObjects(whatever, [self.bob hey:@"WHAT THE HELL IS GOING ON HERE!"], @"");
}

-(void)testNumbersWithCaps {
    XCTAssertEqualObjects(chill, [self.bob hey:@"1 2 3 GO!"], @"");
}

-(void)testStatment {
    XCTAssertEqualObjects(whatever, [self.bob hey:@"Tom-ay-to, tom-aaaah-to."], @"");
}

-(void)testNormalQuestion {
    XCTAssertEqualObjects(sure, [self.bob hey:@"Does this cryogenic chamber make me look fat?"], @"");
}

-(void)testTalkingForcefully {
    XCTAssertEqualObjects(whatever, [self.bob hey:@"Let's go make out behind the gym!"], @"");
}

-(void)testUsingAcronymsInRegularSpeech {
    XCTAssertEqualObjects(whatever, [self.bob hey:@"It's OK if you don't want to go to the DMV."], @"");
}

-(void)testShoutingWithSpecialCharacters {
    XCTAssertEqualObjects(chill, [self.bob hey:@"ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"], @"");
}

-(void)testShoutWithNoExclamationMark {
    XCTAssertEqualObjects(chill, [self.bob hey:@"I HATE YOU"], @"");
}

-(void)testStatmentWithQuestionMark {
    XCTAssertEqualObjects(whatever, [self.bob hey:@"Ending with ? means a question."], @"");
}

-(void)testSilence {
    XCTAssertEqualObjects(notAddressed, [self.bob hey:@""], @"");
}

-(void)testMoreSilence {
    XCTAssertEqualObjects(notAddressed, [self.bob hey:nil], @"");
}

@end

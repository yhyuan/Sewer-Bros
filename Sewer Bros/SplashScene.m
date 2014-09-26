//
//  GameScene.m
//  Sewer Bros
//
//  Created by Yinhuan Yuan on 2014-09-25.
//  Copyright (c) 2014 Yinhuan Yuan. All rights reserved.
//

#import "SplashScene.h"

@implementation SplashScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    self.backgroundColor = [SKColor blackColor];
    NSString *fileName = @"";
    if (self.frame.size.width == 480) {
        fileName = @"SewerSplash_480";
    } else {
        fileName = @"SewerSplash_568";
    }
    SKSpriteNode *splash = [SKSpriteNode spriteNodeWithImageNamed:fileName];
    splash.name = @"splashNode";
    splash.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    [self addChild:splash];
    /*SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 65;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
    */
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
ax
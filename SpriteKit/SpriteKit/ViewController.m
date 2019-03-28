//
//  ViewController.m
//  SpriteKit
//
//  Created by Alan on 2019/3/28.
//  Copyright © 2019 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"
#import <SpriteKit/SpriteKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    //创建一个舞台
    SKView*sp=[[SKView alloc]initWithFrame:self.view.frame];
    //生成一个场景
    SKScene*scene=[SKScene sceneWithSize:self.view.frame.size];
    //生成节点(节点类似精灵，精灵是在场景里面跑的)
    SKSpriteNode*monster=[SKSpriteNode spriteNodeWithImageNamed:@"circlewood1"];
    //设置锚点
    monster.position=CGPointMake(100, 100);
    //场景添加精灵
    [scene addChild:monster];
    
    //舞台加载场景
    [sp presentScene:scene];
    
    [self.view addSubview:sp];
    
    
    //添加运动  moveTo方法不可逆  moveBy方法可逆
    SKAction*actionMove=[SKAction moveTo:CGPointMake(200, 100) duration:2];
    //添加一个动作完成
    SKAction*actionDone=[SKAction runBlock:^{
        NSLog(@"运行完成");
    }];
    
    //把动作添加到精灵上
    [monster runAction:actionMove completion:^{
        [monster runAction:actionDone];
        
    }];

    
    // Do any additional setup after loading the view.
}


@end

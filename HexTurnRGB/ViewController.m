//
//  ViewController.m
//  HexTurnRGB
//
//  Created by 公安信息 on 16/5/19.
//  Copyright © 2016年 zyx. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Hex.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int i = 0; i < 5; i++) {
        UIView * view1 = [[UIView alloc] init];
        view1.frame = CGRectMake(100, 100*i + 100, 80, 80);
        switch (i) {
                /*
                 case 0、case1、case4:调用方法3 ，方法3可处理以“#和0X开头的16进制字符串”
                 case1：调用方法1，其alpha是固定的，只处理十六进制数"0X"开头
                 case2：方法2，颜色的alpha可以改变
                 */
            case 0:
                view1.backgroundColor = [UIColor colorWithHexString:@"#e5e589"];
                break;
            case 1:
                view1.backgroundColor = [UIColor colorWithHexString:@"0Xe5e589"];
                break;
            case 2:
                view1.backgroundColor = [UIColor colorWithHex:0Xe5e589];
                break;
            case 3:
                view1.backgroundColor = [UIColor colorWithHex:0Xe5e589 alpha:0.5];
                break;
            case 4:
                view1.backgroundColor = [UIColor colorWithHexString:@"#784679"];
                break;
                
            default:
                break;
        }
        
        [self.view addSubview:view1];
    }
 }







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

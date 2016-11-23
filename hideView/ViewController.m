//
//  ViewController.m
//  hideView
//
//  Created by kuanter on 16/5/11.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "ViewController.h"
#import "HMSegmentedControl.h"
//#import "SixButtonsView.h"
#define kWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UILabel*label=[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//    label.backgroundColor=[UIColor redColor];
//    UITapGestureRecognizer*tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(fasfasf)];
//    label.userInteractionEnabled = YES;
//    [label addGestureRecognizer:tap];
//    [self.view addSubview:label];
//    

//       pod 'HMSegmentedControl', '~> 1.5.2'
    
    HMSegmentedControl *segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:@[@"全部评价",@"好评", @"好评"]];
    segmentedControl.frame = CGRectMake(30, 100, kWidth, 44);
//    segmentedControl.titleTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:[UIColor redColor]};
//    segmentedControl.selectedTitleTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:[UIColor orangeColor]};
    segmentedControl.selectionStyle = HMSegmentedControlSelectionStyleFullWidthStripe;
    segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown;
    segmentedControl.verticalDividerEnabled = YES;
    segmentedControl.verticalDividerColor = [UIColor greenColor];
    segmentedControl.verticalDividerWidth = 2.0f;
    segmentedControl.selectionIndicatorHeight = 2.0f;
//    segmentedControl.selectionIndicatorColor=[UIColor orangeColor];
    
    [self.view addSubview:segmentedControl];

    [segmentedControl setIndexChangeBlock:^(NSInteger index) {
       
             NSLog(@"====%s==========%ld",__func__,(long)index);
    }];
    
    
    
    
//    SixButtonsView*sixV=[[SixButtonsView alloc] initWithFrame:CGRectMake(30, 200, 300, 200)];
//    sixV.backgroundColor=[UIColor yellowColor];
//    [self.view addSubview:sixV];
//    
//    [sixV setIndexChangeBlock:^(NSInteger index) {
//        
//        NSLog(@"====%s==========%ld",__func__,(long)index);
//    }];

    
}

@end

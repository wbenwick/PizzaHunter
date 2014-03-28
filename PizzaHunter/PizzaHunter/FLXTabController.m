//
//  FLXTabController.m
//  PizzaHunter
//
//  Created by Administrator on 3/27/14.
//  Copyright (c) 2014 FileLogix. All rights reserved.
//

#import "FLXTabController.h"

@interface FLXTabController ()
@property (weak, nonatomic) IBOutlet UITabBar *myTabBar;

@end

@implementation FLXTabController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"Tab VC View Did Appear");
    

//    CATransition *transition;
//    transition = [CATransition animation];
//    transition.type = kCATransitionMoveIn;
//    transition.duration = 1.0;
//    
//    [self.view.window.layer addAnimation:transition forKey:@"fadeTransition"];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
//    NSLog(@"Tab Bar selected %@", item);
//    
//    
////    CATransition *transition;
////    transition = [CATransition animation];
////    transition.type = kCATransitionFromTop;
////    transition.duration = 0.2;
////    
////    [self.view.window.layer addAnimation:transition forKey:@"fadeTransition"];
//
//
//
//}


-(void)tabBarController:(UITabBarController *)tabBarController
didSelectViewController:(UIViewController*)viewController{

    
    NSLog(@"Tab Bar switching %@", tabBarController);
//
//        [UIView transitionWithView:viewController.view
//                          duration:0.1
//                           options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionTransitionCrossDissolve
//                        animations:^(void){
//                        } completion:^(BOOL finished){
//                            [UIView beginAnimations:@"animation" context:nil];
//                            [UIView setAnimationDuration:0.7];
//                            [UIView setAnimationBeginsFromCurrentState:YES];
//                            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft
//                                                   forView:viewController.view
//                                                     cache:NO];
//                            [UIView commitAnimations];
//                        }];
    
    
}

- (NSTimeInterval)transitionDuration
{
    return 0.5;
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    
    NSLog(@"Tab Bar should switch %@", tabBarController);

    UIView  *srcView = [[tabBarController selectedViewController] view];
    UIView  *dstView = [viewController view];
    
    if (srcView != dstView) {
    
    [UIView transitionFromView:srcView
                        toView:dstView
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    completion:nil];

    }

    [UIView tran]
    
    return YES;
    
//    [UIView transitionWithView:viewController.view
//                      duration:0.1
//                       options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionTransitionCrossDissolve
//                    animations:^(void){
//                    } completion:^(BOOL finished){
//                        [UIView beginAnimations:@"animation" context:nil];
//                        [UIView setAnimationDuration:0.7];
//                        [UIView setAnimationBeginsFromCurrentState:YES];
//                        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft
//                                               forView:viewController.view
//                                                 cache:NO];
//                        [UIView commitAnimations];
//                    }];
//    return YES;
    
//    UIViewController *currentVC = [tabBarController selectedViewController];
//    //If we have selected the same tab that we are on, just ignore it and return 'no'.
//    if (currentVC == viewController)
//        return NO;
//    
//    // Here we need to get a handle on the existing view, but
//    // each of my tabs are navigation controllers.
//    // Get the navigation controller, then the view controller should be its
//    // first child.
//    UIViewController *myVC;
//    if([viewController isKindOfClass:[UINavigationController class]]){
//        UINavigationController *myNav = (UINavigationController *)viewController;
//        myVC =  [[myNav childViewControllers] objectAtIndex:0];
//    }
//    // The home page class is 'TheHomePageThatMobileAppsShouldntHave'
//    // We only want to animate when the controller we are navigating to is this kind of class
//        [UIView beginAnimations:@"View Flip" context:nil];
//        [UIView setAnimationDuration:1.0];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        
//        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:tabBarController.view cache:YES];
//        [currentVC viewWillAppear:YES];
//        [viewController viewWillDisappear:YES];
//        [viewController viewDidDisappear:YES];
//        [currentVC viewDidAppear:YES];
//        [UIView commitAnimations];
//	return YES;
    
}


@end

//
//  MineService.m
//  AFNetworking
//
//  Created by 天空吸引我 on 2019/6/14.
//

#import "MineService.h"
#import "LoginViewController.h"
#import "NSObject+JJAdd.h"
#import "BaseNavigationViewController.h"
#import "LoginModel.h"

@implementation MineService

+ (BOOL)openPath:(NSString *)path data:(NSDictionary<NSString *, id> *)data {
    if ([path isEqualToString:@"/login"]) {
       return [self presentLoginVC];
    }
    return NO;
}

+ (BOOL)presentLoginVC {
    LoginViewController *ctrl = [[LoginViewController alloc] init];
    BaseNavigationViewController *nc = [[BaseNavigationViewController alloc] initWithRootViewController:ctrl];
    [[self currentViewController] presentViewController:nc animated:YES completion:nil];
    return YES;
}

+ (NSString *)getUserId {
   return [LoginModel getUserId];
}

+ (BOOL)isLogin {
    if ([MineService getUserId].length > 0) {
        return YES;
    }
    return NO;
}
@end

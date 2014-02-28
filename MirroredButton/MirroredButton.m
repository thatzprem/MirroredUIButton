//
//  MirroredButton.m
//  MirroredButton
//
//  Created by Prem kumar on 28/02/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "MirroredButton.h"

@implementation MirroredButton

//Overridden the class methods for changes.

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame) -  self.imageEdgeInsets.right + self.imageEdgeInsets.left;
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super titleRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]);
    return frame;
}

@end

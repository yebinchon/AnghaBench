#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ Type; } ;
typedef  TYPE_1__ VGLBitmap ;

/* Variables and functions */
 scalar_t__ MEMBUF ; 
 TYPE_1__* VGLDisplay ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ VGLVDisplay ; 
 int FUNC2 (TYPE_1__*,int,int,TYPE_1__*,int,int,int,int) ; 

int
FUNC3(VGLBitmap *src, int srcx, int srcy,
	      VGLBitmap *dst, int dstx, int dsty, int width, int hight)
{
  int error;

  if (hight < 0)
    return -1;
  if (src == VGLDisplay)
    src = &VGLVDisplay;
  if (src->Type != MEMBUF)
    return -1;		/* invalid */
  if (dst == VGLDisplay) {
    FUNC0();
    FUNC2(src, srcx, srcy, &VGLVDisplay, dstx, dsty, width, hight);
    error = FUNC2(src, srcx, srcy, &VGLVDisplay, dstx, dsty,
                            width, hight);
    if (error != 0)
      return error;
    src = &VGLVDisplay;
    srcx = dstx;
    srcy = dsty;
  } else if (dst->Type != MEMBUF)
    return -1;		/* invalid */
  error = FUNC2(src, srcx, srcy, dst, dstx, dsty, width, -hight);
  if (dst == VGLDisplay)
    FUNC1();
  return error;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_5__ {int VXsize; int VYsize; scalar_t__ Type; int PixelBytes; int /*<<< orphan*/ * Bitmap; } ;
typedef  TYPE_1__ VGLBitmap ;

/* Variables and functions */
 scalar_t__ MEMBUF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* VGLDisplay ; 
 TYPE_1__ VGLVDisplay ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 

u_long
FUNC3(VGLBitmap *object, int x, int y)
{
  u_long color;
  int offset;

  FUNC0();
  if (x<0 || x>=object->VXsize || y<0 || y>=object->VYsize)
    return 0;
  if (object == VGLDisplay)
    object = &VGLVDisplay;
  else if (object->Type != MEMBUF)
    return 0;		/* invalid */
  offset = (y * object->VXsize + x) * object->PixelBytes;
  switch (object->PixelBytes) {
  case 1:
    FUNC2(&color, &object->Bitmap[offset], 1);
    return FUNC1(color) & 0xff;
  case 2:
    FUNC2(&color, &object->Bitmap[offset], 2);
    return FUNC1(color) & 0xffff;
  case 3:
    FUNC2(&color, &object->Bitmap[offset], 3);
    return FUNC1(color) & 0xffffff;
  case 4:
    FUNC2(&color, &object->Bitmap[offset], 4);
    return FUNC1(color);
  }
  return 0;		/* invalid */
}
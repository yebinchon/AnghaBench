#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  VGLBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 

void
FUNC1(VGLBitmap *object, int x1, int y1, int x2, int y2, u_long color)
{
  FUNC0(object, x1, y1, x2, y1, color);
  FUNC0(object, x2, y1, x2, y2, color);
  FUNC0(object, x2, y2, x1, y2, color);
  FUNC0(object, x1, y2, x1, y1, color);
}
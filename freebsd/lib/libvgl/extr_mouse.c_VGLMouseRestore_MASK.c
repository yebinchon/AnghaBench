#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct mouse_info {TYPE_2__ u; int /*<<< orphan*/  operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_MOUSECTL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MOUSE_GETINFO ; 
 int /*<<< orphan*/  MOUSE_MOVEABS ; 
 int /*<<< orphan*/  VGLMouseXpos ; 
 int /*<<< orphan*/  VGLMouseYpos ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mouse_info*) ; 

void
FUNC3(void)
{
  struct mouse_info mouseinfo;

  FUNC0();
  mouseinfo.operation = MOUSE_GETINFO;
  if (FUNC2(0, CONS_MOUSECTL, &mouseinfo) == 0) {
    mouseinfo.operation = MOUSE_MOVEABS;
    mouseinfo.u.data.x = VGLMouseXpos;
    mouseinfo.u.data.y = VGLMouseYpos;
    FUNC2(0, CONS_MOUSECTL, &mouseinfo);
  }
  FUNC1();
}
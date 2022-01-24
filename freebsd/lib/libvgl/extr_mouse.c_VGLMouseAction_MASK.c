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
struct TYPE_3__ {scalar_t__ x; scalar_t__ y; int /*<<< orphan*/  buttons; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct mouse_info {TYPE_2__ u; int /*<<< orphan*/  operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_MOUSECTL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MOUSE_GETINFO ; 
 int VGLMintpending ; 
 int /*<<< orphan*/  VGLMouseButtons ; 
 scalar_t__ VGLMouseXpos ; 
 scalar_t__ VGLMouseYpos ; 
 scalar_t__ VGLMsuppressint ; 
 int VGL_MOUSEHIDE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mouse_info*) ; 

__attribute__((used)) static void
FUNC3(int dummy)	
{
  struct mouse_info mouseinfo;
  int mousemode;

  if (VGLMsuppressint) {
    VGLMintpending = 1;
    return;
  }
again:
  FUNC0();
  VGLMintpending = 0;
  mouseinfo.operation = MOUSE_GETINFO;
  FUNC2(0, CONS_MOUSECTL, &mouseinfo);
  if (VGLMouseXpos != mouseinfo.u.data.x ||
      VGLMouseYpos != mouseinfo.u.data.y) {
    mousemode = FUNC1(VGL_MOUSEHIDE);
    VGLMouseXpos = mouseinfo.u.data.x;
    VGLMouseYpos = mouseinfo.u.data.y;
    FUNC1(mousemode);
  }
  VGLMouseButtons = mouseinfo.u.data.buttons;

  /* 
   * Loop to handle any new (suppressed) signals.  This is INTON() without
   * recursion.  !SA_RESTART prevents recursion in signal handling.  So the
   * maximum recursion is 2 levels.
   */
  VGLMsuppressint = 0;
  if (VGLMintpending)
    goto again;
}
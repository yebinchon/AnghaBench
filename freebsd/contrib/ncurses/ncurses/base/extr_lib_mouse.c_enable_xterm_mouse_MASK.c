#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int _emxmouse_activated; int _mouse_active; int /*<<< orphan*/  _mouse_xtermcap; } ;
typedef  TYPE_1__ SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(SCREEN *sp, int enable)
{
#if USE_EMX_MOUSE
    sp->_emxmouse_activated = enable;
#else
    FUNC0("xterm-mouse", FUNC1(sp->_mouse_xtermcap, enable));
#endif
    sp->_mouse_active = enable;
}
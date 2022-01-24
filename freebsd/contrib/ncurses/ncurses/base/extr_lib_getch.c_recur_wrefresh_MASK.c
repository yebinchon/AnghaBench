#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int _flags; } ;
typedef  TYPE_1__ WINDOW ;
typedef  int /*<<< orphan*/  SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/ * CURRENT_SCREEN ; 
 int _HASMOVED ; 
 int _ISPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ _nc_use_pthreads ; 
 int /*<<< orphan*/  curses ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(WINDOW *win)
{
#ifdef USE_PTHREADS
    SCREEN *sp = _nc_screen_of(win);
    if (_nc_use_pthreads && sp != CURRENT_SCREEN) {
	SCREEN *save_SP;

	/* temporarily switch to the window's screen to check/refresh */
	_nc_lock_global(curses);
	save_SP = CURRENT_SCREEN;
	_nc_set_screen(sp);
	recur_wrefresh(win);
	_nc_set_screen(save_SP);
	_nc_unlock_global(curses);
    } else
#endif
	if ((FUNC4(win) || (win->_flags & _HASMOVED))
	    && !(win->_flags & _ISPAD)) {
	FUNC5(win);
    }
}
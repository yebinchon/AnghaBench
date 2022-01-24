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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {int /*<<< orphan*/  _called_wgetch; } ;
typedef  TYPE_1__ SCREEN ;

/* Variables and functions */
 TYPE_1__* CURRENT_SCREEN ; 
 int ERR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAXCOLUMNS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ _nc_use_pthreads ; 
 int /*<<< orphan*/  curses ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(WINDOW *win, char *buf)
{
    SCREEN *sp = FUNC1(win);
    int rc;

    if (sp != 0) {
#ifdef USE_PTHREADS
	if (_nc_use_pthreads && sp != CURRENT_SCREEN) {
	    SCREEN *save_SP;

	    /* temporarily switch to the window's screen to get cooked input */
	    _nc_lock_global(curses);
	    save_SP = CURRENT_SCREEN;
	    _nc_set_screen(sp);
	    rc = recur_wgetnstr(win, buf);
	    _nc_set_screen(save_SP);
	    _nc_unlock_global(curses);
	} else
#endif
	{
	    sp->_called_wgetch = TRUE;
	    rc = FUNC4(win, buf, MAXCOLUMNS);
	    sp->_called_wgetch = FALSE;
	}
    } else {
	rc = ERR;
    }
    return rc;
}
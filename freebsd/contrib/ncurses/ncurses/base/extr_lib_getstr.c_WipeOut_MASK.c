#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chtype ;
struct TYPE_7__ {int _cury; int _curx; } ;
typedef  TYPE_1__ WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static char *
FUNC4(WINDOW *win, int y, int x, char *first, char *last, int echoed)
{
    if (last > first) {
	*--last = '\0';
	if (echoed) {
	    int y1 = win->_cury;
	    int x1 = win->_curx;

	    FUNC3(win, y, x);
	    FUNC2(win, first);
	    FUNC0(win, y, x);
	    while (win->_cury < y1
		   || (win->_cury == y1 && win->_curx < x1))
		FUNC1(win, (chtype) ' ');

	    FUNC3(win, y, x);
	}
    }
    return last;
}
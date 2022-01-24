#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VICMD ;
struct TYPE_11__ {struct TYPE_11__* nextdisp; TYPE_1__* gp; } ;
struct TYPE_10__ {int /*<<< orphan*/  dq; } ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  SC_COMEDIT ; 
 int SC_SSWITCH ; 
 int SC_STATUS ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  q ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	/*
	 * You can't leave a colon command-line edit window -- it's not that
	 * it won't work, but it gets real weird, real fast when you execute
	 * a colon command out of a window that was forked from a window that's
	 * now backgrounded...  You get the idea.
	 */
	if (FUNC0(sp, SC_COMEDIT)) {
		FUNC4(sp, M_ERR,
		    "308|Enter <CR> to execute a command, :q to exit");
		return (1);
	}
		
	/*
	 * Try for the next lower screen, or, go back to the first
	 * screen on the stack.
	 */
	if (FUNC3(sp, q) != NULL)
		sp->nextdisp = FUNC3(sp, q);
	else if (FUNC2(sp->gp->dq) == sp) {
		FUNC4(sp, M_ERR, "187|No other screen to switch to");
		return (1);
	} else
		sp->nextdisp = FUNC2(sp->gp->dq);

	FUNC1(sp->nextdisp, SC_STATUS);
	FUNC1(sp, SC_SSWITCH | SC_STATUS);
	return (0);
}
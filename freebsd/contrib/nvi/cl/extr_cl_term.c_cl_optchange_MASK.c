#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_13__ {TYPE_1__* frp; struct TYPE_13__* gp; } ;
struct TYPE_12__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_2__ CL_PRIVATE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int CL_RENAME_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int G_SRESTART ; 
#define  O_COLUMNS 132 
#define  O_LINES 131 
#define  O_MESG 130 
#define  O_TERM 129 
#define  O_WINDOWNAME 128 
 int SC_SCR_EX ; 
 int SC_SCR_VI ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

int
FUNC5(SCR *sp, int opt, char *str, u_long *valp)
{
	CL_PRIVATE *clp;

	clp = FUNC0(sp);

	switch (opt) {
	case O_TERM:
		FUNC1(sp, SC_SCR_EX | SC_SCR_VI);
		/* FALLTHROUGH */
	case O_COLUMNS:
	case O_LINES:
		/*
		 * Changing the terminal type requires that we reinitialize
		 * curses, while resizing does not.
		 */
		FUNC2(sp->gp, G_SRESTART);
		break;
	case O_MESG:
		(void)FUNC3(sp, clp, *valp);
		break;
	case O_WINDOWNAME:
		if (*valp) {
			FUNC2(clp, CL_RENAME_OK);

			/*
			 * If the screen is live, i.e. we're not reading the
			 * .exrc file, update the window.
			 */
			if (sp->frp != NULL && sp->frp->name != NULL)
				(void)FUNC4(sp, sp->frp->name, 1);
		} else {
			FUNC1(clp, CL_RENAME_OK);

			(void)FUNC4(sp, NULL, 0);
		}
		break;
	}
	return (0);
}
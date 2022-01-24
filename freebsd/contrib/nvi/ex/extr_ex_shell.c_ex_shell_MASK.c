#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* frp; TYPE_1__* gp; } ;
struct TYPE_14__ {int /*<<< orphan*/ * name; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* scr_rename ) (TYPE_3__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_3__ SCR ;
typedef  int /*<<< orphan*/  EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_SHELL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EX_WAIT_NO ; 
 int /*<<< orphan*/  SC_SCR_EXWROTE ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 

int
FUNC10(SCR *sp, EXCMD *cmdp)
{
	int rval;
	char *buf;

	/* We'll need a shell. */
	if (FUNC7(sp, O_SHELL, 0))
		return (1);

	/*
	 * XXX
	 * Assumes all shells use -i.
	 */
	(void)FUNC3(&buf, "%d -i", FUNC2(sp, O_SHELL));
	if (buf == NULL) {
		FUNC6(sp, M_SYSERR, NULL);
		return (1);
	}

	/* Restore the window name. */
	(void)sp->gp->scr_rename(sp, NULL, 0);

	/* If we're still in a vi screen, move out explicitly. */
	rval = FUNC4(sp, cmdp, buf, NULL, !FUNC0(sp, SC_SCR_EXWROTE));
	FUNC5(buf);

	/* Set the window name. */
	(void)sp->gp->scr_rename(sp, sp->frp->name, 1);

	/*
	 * !!!
	 * Historically, vi didn't require a continue message after the
	 * return of the shell.  Match it.
	 */
	FUNC1(sp, SC_EX_WAIT_NO);

	return (rval);
}
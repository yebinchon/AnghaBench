#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int argc; int /*<<< orphan*/  iflags; int /*<<< orphan*/ * cmd; TYPE_1__** argv; } ;
struct TYPE_20__ {int /*<<< orphan*/ * ep; TYPE_3__* frp; } ;
struct TYPE_19__ {int /*<<< orphan*/  len; int /*<<< orphan*/  bp; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ FREF ;
typedef  TYPE_3__ EXCMD ;

/* Variables and functions */
 size_t C_VSPLIT ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  E_NEWSCREEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FR_TMPFILE ; 
 int FS_FORCE ; 
 int FS_SETALT ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  SC_FSWITCH ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * cmds ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 

int
FUNC10(SCR *sp, EXCMD *cmdp)
{
	FREF *frp;
	int attach, setalt;
	char *np;
	size_t nlen;

	switch (cmdp->argc) {
	case 0:
		/*
		 * If the name has been changed, we edit that file, not the
		 * original name.  If the user was editing a temporary file
		 * (or wasn't editing any file), create another one.  The
		 * reason for not reusing temporary files is that there is
		 * special exit processing of them, and reuse is tricky.
		 */
		frp = sp->frp;
		if (sp->ep == NULL || FUNC1(frp, FR_TMPFILE)) {
			if ((frp = FUNC6(sp, NULL)) == NULL)
				return (1);
			attach = 0;
		} else
			attach = 1;
		setalt = 0;
		break;
	case 1:
		FUNC3(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1, 
			 np, nlen);
		if ((frp = FUNC6(sp, np)) == NULL)
			return (1);
		attach = 0;
		setalt = 1;
		FUNC9(sp, np);
		break;
	default:
		FUNC4();
	}

	if (FUNC1(cmdp, E_NEWSCREEN) || cmdp->cmd == &cmds[C_VSPLIT])
		return (FUNC5(sp, cmdp, frp, attach));

	/*
	 * Check for modifications.
	 *
	 * !!!
	 * Contrary to POSIX 1003.2-1992, autowrite did not affect :edit.
	 */
	if (FUNC8(sp, FUNC0(cmdp->iflags, E_C_FORCE)))
		return (1);

	/* Switch files. */
	if (FUNC7(sp, frp, NULL, (setalt ? FS_SETALT : 0) |
	    (FUNC0(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0)))
		return (1);

	FUNC2(sp, SC_FSWITCH);
	return (0);
}
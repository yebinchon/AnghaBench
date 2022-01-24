#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_23__ {TYPE_1__* cmd; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* scr_child ) (TYPE_2__*) ;int /*<<< orphan*/  (* scr_attr ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* scr_screen ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {TYPE_3__* gp; } ;
struct TYPE_20__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ GS ;
typedef  TYPE_4__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  EXM_NOCANON ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_SHELL ; 
 char* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SA_ALTERNATE ; 
 int /*<<< orphan*/  SC_EX ; 
 int SC_SCR_EX ; 
 int SC_SCR_EXWROTE ; 
 int /*<<< orphan*/  SC_VI ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,long,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 () ; 

int
FUNC17(SCR *sp, EXCMD *cmdp, char *cmd, const char *msg, int need_newline)
{
	GS *gp;
	const char *name;
	pid_t pid;

	gp = sp->gp;

	/* We'll need a shell. */
	if (FUNC10(sp, O_SHELL, 0))
		return (1);

	/* Enter ex mode. */
	if (FUNC0(sp, SC_VI)) {
		if (gp->scr_screen(sp, SC_EX)) {
			FUNC6(sp, cmdp->cmd->name, EXM_NOCANON);
			return (1);
		}
		(void)gp->scr_attr(sp, SA_ALTERNATE, 0);
		FUNC1(sp, SC_SCR_EX | SC_SCR_EXWROTE);
	}

	/* Put out additional newline, message. */
	if (need_newline)
		(void)FUNC5(sp, "\n");
	if (msg != NULL) {
		(void)FUNC5(sp, msg);
		(void)FUNC5(sp, "\n");
	}
	(void)FUNC4(sp);

	switch (pid = FUNC16()) {
	case -1:			/* Error. */
		FUNC8(sp, M_SYSERR, "vfork");
		return (1);
	case 0:				/* Utility. */
		if (gp->scr_child)
			gp->scr_child(sp);
		if ((name = FUNC12(FUNC2(sp, O_SHELL), '/')) == NULL)
			name = FUNC2(sp, O_SHELL);
		else
			++name;
		FUNC7(FUNC2(sp, O_SHELL), name, "-c", cmd, (char *)NULL);
		FUNC9(sp, M_SYSERR, FUNC2(sp, O_SHELL), "execl: %s");
		FUNC3(127);
		/* NOTREACHED */
	default:			/* Parent. */
		return (FUNC11(sp, (long)pid, cmd, 0, 0));
	}
	/* NOTREACHED */
}
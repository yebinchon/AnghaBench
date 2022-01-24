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
struct TYPE_3__ {char* dname; int to_fd; int from_fd; void* from_fp; void* to_fp; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ CSC ;

/* Variables and functions */
 int /*<<< orphan*/  CSCOPE_CMD_FMT ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 void* FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC9 (int*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12(SCR *sp, CSC *csc, char *dbname)
{
	int to_cs[2], from_cs[2];
	char *cmd;

	/*
	 * Cscope reads from to_cs[0] and writes to from_cs[1]; vi reads from
	 * from_cs[0] and writes to to_cs[1].
	 */
	to_cs[0] = to_cs[1] = from_cs[0] = from_cs[1] = -1;
	if (FUNC9(to_cs) < 0 || FUNC9(from_cs) < 0) {
		FUNC7(sp, M_SYSERR, "pipe");
		goto err;
	}
	switch (csc->pid = FUNC11()) {
		char *dn, *dbn;
	case -1:
		FUNC7(sp, M_SYSERR, "vfork");
err:		if (to_cs[0] != -1)
			(void)FUNC2(to_cs[0]);
		if (to_cs[1] != -1)
			(void)FUNC2(to_cs[1]);
		if (from_cs[0] != -1)
			(void)FUNC2(from_cs[0]);
		if (from_cs[1] != -1)
			(void)FUNC2(from_cs[1]);
		return (1);
	case 0:				/* child: run cscope. */
		(void)FUNC3(to_cs[0], STDIN_FILENO);
		(void)FUNC3(from_cs[1], STDOUT_FILENO);
		(void)FUNC3(from_cs[1], STDERR_FILENO);

		/* Close unused file descriptors. */
		(void)FUNC2(to_cs[1]);
		(void)FUNC2(from_cs[0]);

		/* Run the cscope command. */
#define	CSCOPE_CMD_FMT		"cd %s && exec cscope -dl -f %s"
		if ((dn = FUNC10(csc->dname)) == NULL)
			goto nomem;
		if ((dbn = FUNC10(dbname)) == NULL) {
			FUNC6(dn);
			goto nomem;
		}
		(void)FUNC1(&cmd, CSCOPE_CMD_FMT, dn, dbn);
		FUNC6(dbn);
		FUNC6(dn);
		if (cmd == NULL) {
nomem:			FUNC7(sp, M_SYSERR, NULL);
			FUNC0 (1);
		}
		(void)FUNC4(_PATH_BSHELL, "sh", "-c", cmd, (char *)NULL);
		FUNC8(sp, M_SYSERR, cmd, "execl: %s");
		FUNC6(cmd);
		FUNC0 (127);
		/* NOTREACHED */
	default:			/* parent. */
		/* Close unused file descriptors. */
		(void)FUNC2(to_cs[0]);
		(void)FUNC2(from_cs[1]);

		/*
		 * Save the file descriptors for later duplication, and
		 * reopen as streams.
		 */
		csc->to_fd = to_cs[1];
		csc->to_fp = FUNC5(to_cs[1], "w");
		csc->from_fd = from_cs[0];
		csc->from_fp = FUNC5(from_cs[0], "r");
		break;
	}
	return (0);
}
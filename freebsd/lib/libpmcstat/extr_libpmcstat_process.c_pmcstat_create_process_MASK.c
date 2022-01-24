#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pmcstat_target {int /*<<< orphan*/  pt_pid; } ;
struct pmcstat_args {int /*<<< orphan*/  pa_targets; int /*<<< orphan*/ * pa_argv; } ;
struct kevent {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 size_t CHILDSOCKET ; 
 int /*<<< orphan*/  EVFILT_PROC ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  NOTE_EXIT ; 
 size_t PARENTSOCKET ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pmcstat_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pmcstat_target* FUNC10 (int) ; 
 int /*<<< orphan*/  pt_next ; 
 scalar_t__ FUNC11 (int,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (int,char*,int) ; 

void
FUNC14(int *pmcstat_sockpair, struct pmcstat_args *args,
    int pmcstat_kq)
{
	char token;
	pid_t pid;
	struct kevent kev;
	struct pmcstat_target *pt;

	if (FUNC12(AF_UNIX, SOCK_STREAM, 0, pmcstat_sockpair) < 0)
		FUNC3(EX_OSERR, "ERROR: cannot create socket pair");

	switch (pid = FUNC6()) {
	case -1:
		FUNC3(EX_OSERR, "ERROR: cannot fork");
		/*NOTREACHED*/

	case 0:		/* child */
		(void) FUNC2(pmcstat_sockpair[PARENTSOCKET]);

		/* Write a token to tell our parent we've started executing. */
		if (FUNC13(pmcstat_sockpair[CHILDSOCKET], "+", 1) != 1)
			FUNC3(EX_OSERR, "ERROR (child): cannot write token");

		/* Wait for our parent to signal us to start. */
		if (FUNC11(pmcstat_sockpair[CHILDSOCKET], &token, 1) < 0)
			FUNC3(EX_OSERR, "ERROR (child): cannot read token");
		(void) FUNC2(pmcstat_sockpair[CHILDSOCKET]);

		/* exec() the program requested */
		FUNC5(*args->pa_argv, args->pa_argv);
		/* and if that fails, notify the parent */
		FUNC9(FUNC7(), SIGCHLD);
		FUNC3(EX_OSERR, "ERROR: execvp \"%s\" failed", *args->pa_argv);
		/*NOTREACHED*/

	default:	/* parent */
		(void) FUNC2(pmcstat_sockpair[CHILDSOCKET]);
		break;
	}

	/* Ask to be notified via a kevent when the target process exits. */
	FUNC0(&kev, pid, EVFILT_PROC, EV_ADD | EV_ONESHOT, NOTE_EXIT, 0,
	    NULL);
	if (FUNC8(pmcstat_kq, &kev, 1, NULL, 0, NULL) < 0)
		FUNC3(EX_OSERR, "ERROR: cannot monitor child process %d", pid);

	if ((pt = FUNC10(sizeof(*pt))) == NULL)
		FUNC4(EX_SOFTWARE, "ERROR: Out of memory.");

	pt->pt_pid = pid;
	FUNC1(&args->pa_targets, pt, pt_next);

	/* Wait for the child to signal that its ready to go. */
	if (FUNC11(pmcstat_sockpair[PARENTSOCKET], &token, 1) < 0)
		FUNC3(EX_OSERR, "ERROR (parent): cannot read token");

	return;
}
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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  FSHTTY ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigprocmask_cleanup ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ tpgrp ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14(int wanttty, pid_t pgrp)
{
#ifdef BSDJOBS
# ifdef POSIXJOBS
    sigset_t oset, set;
# endif /* POSIXJOBS */

    jobdebug_xprintf(("wanttty %d pid %d opgrp%d pgrp %d tpgrp %d\n",
		      wanttty, (int)getpid(), (int)pgrp, (int)mygetpgrp(),
		      (int)tcgetpgrp(FSHTTY)));
# ifdef POSIXJOBS
    /*
     * christos: I am blocking the tty signals till I've set things
     * correctly....
     */
    if (wanttty > 0) {
	sigemptyset(&set);
	sigaddset(&set, SIGTSTP);
	sigaddset(&set, SIGTTIN);
	(void)sigprocmask(SIG_BLOCK, &set, &oset);
	cleanup_push(&oset, sigprocmask_cleanup);
    }
# endif /* POSIXJOBS */

# ifndef POSIXJOBS
    if (wanttty > 0)
	setttypgrp(pgrp);
# endif /* !POSIXJOBS */

    /*
     * From: Michael Schroeder <mlschroe@immd4.informatik.uni-erlangen.de>
     * Don't check for tpgrp >= 0 so even non-interactive shells give
     * background jobs process groups Same for the comparison in the other part
     * of the #ifdef
     */
    if (wanttty >= 0) {
	if (setpgid(0, pgrp) == -1) {
# ifdef POSIXJOBS
	    /* Walking process group fix; see above */
	    if (setpgid(0, pgrp = getpid()) == -1) {
# endif /* POSIXJOBS */
		stderror(ERR_SYSTEM, "setpgid child:\n", strerror(errno));
		xexit(0);
# ifdef POSIXJOBS
	    }
	    wanttty = pgrp;  /* Now we really want the tty, since we became the
			      * the process group leader
			      */
# endif /* POSIXJOBS */
	}
    }

# ifdef POSIXJOBS
    if (wanttty > 0) {
	setttypgrp(pgrp);
	cleanup_until(&oset);
    }
# endif /* POSIXJOBS */

    jobdebug_xprintf(("wanttty %d pid %d pgrp %d tpgrp %d\n",
		      wanttty, getpid(), mygetpgrp(), tcgetpgrp(FSHTTY)));

    if (tpgrp > 0)
	tpgrp = 0;		/* gave tty away */
#endif /* BSDJOBS */
}
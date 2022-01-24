#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct command {int t_dflg; scalar_t__ t_systype; int /*<<< orphan*/  t_nice; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int pid_t ;
struct TYPE_2__ {int p_jobid; } ;

/* Variables and functions */
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  ERR_NESTING ; 
 int /*<<< orphan*/  ERR_NOPROC ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  FORKSLEEP ; 
 int F_NICE ; 
 int F_NOHUP ; 
 int F_NOINTERRUPT ; 
 int F_VER ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSYNCH ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STRSYSTYPE ; 
 int /*<<< orphan*/  STRbsd43 ; 
 int /*<<< orphan*/  STRminus ; 
 int /*<<< orphan*/  STRsys53 ; 
 int child ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ gointr ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct command*) ; 
 struct sigaction parterm ; 
 int /*<<< orphan*/  pause ; 
 scalar_t__ pchild_disabled ; 
 TYPE_1__* pcurrjob ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 scalar_t__ setintr ; 
 int FUNC15 (int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  synch_handler ; 
 scalar_t__ timesdone ; 
 int tpgrp ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

pid_t
FUNC28(struct command *t, int wanttty)
{
    pid_t pid;
    int    ignint = 0;
    pid_t pgrp;
#ifdef SIGSYNCH
    struct sigaction osa, nsa;
#endif /* SIGSYNCH */

    /*
     * A child will be uninterruptible only under very special conditions.
     * Remember that the semantics of '&' is implemented by disconnecting the
     * process from the tty so signals do not need to ignored just for '&'.
     * Thus signals are set to default action for children unless: we have had
     * an "onintr -" (then specifically ignored) we are not playing with
     * signals (inherit action)
     */
    if (setintr)
	ignint = (tpgrp == -1 && (t->t_dflg & F_NOINTERRUPT))
	    || (gointr && FUNC5(gointr, STRminus));

    /*
     * Check for maximum nesting of 16 processes to avoid Forking loops
     */
    if (child == 16)
	FUNC25(ERR_NESTING, 16);
#ifdef SIGSYNCH
    nsa.sa_handler = synch_handler;
    sigfillset(&nsa.sa_mask);
    nsa.sa_flags = SA_RESTART;
    if (sigaction(SIGSYNCH, &nsa, &osa))
	stderror(ERR_SYSTEM, "pfork: sigaction set", strerror(errno));
#endif /* SIGSYNCH */
    /*
     * Hold pchild() until we have the process installed in our table.
     */
    if (wanttty < 0) {
	pchild_disabled++;
	FUNC1(&pchild_disabled, disabled_cleanup);
    }
    while ((pid = FUNC6()) == -1)
	if (setintr == 0)
	    (void) FUNC24(FORKSLEEP);
	else
	    FUNC25(ERR_NOPROC);
    if (pid == 0) {
	(void)FUNC2(); /* Never to be popped */
	pchild_disabled = 0;
	FUNC17();
	pgrp = pcurrjob ? pcurrjob->p_jobid : FUNC7();
	FUNC13();
	pcurrjob = NULL;
#if !defined(BSDTIMES) && !defined(_SEQUENT_) 
	timesdone = 0;
#endif /* !defined(BSDTIMES) && !defined(_SEQUENT_) */
	child++;
	if (setintr) {
	    setintr = 0;	/* until I think otherwise */
	    /*
	     * Children just get blown away on SIGINT, SIGQUIT unless "onintr
	     * -" seen.
	     */
	    (void) FUNC21(SIGINT, ignint ? SIG_IGN : SIG_DFL);
	    (void) FUNC21(SIGQUIT, ignint ? SIG_IGN : SIG_DFL);
#ifdef BSDJOBS
	    if (wanttty >= 0) {
		/* make stoppable */
		(void) signal(SIGTSTP, SIG_DFL);
		(void) signal(SIGTTIN, SIG_DFL);
		(void) signal(SIGTTOU, SIG_DFL);
	    }
#endif /* BSDJOBS */
	    FUNC18(SIGTERM, &parterm, NULL);
	}
	else if (tpgrp == -1 && (t->t_dflg & F_NOINTERRUPT)) {
	    (void) FUNC21(SIGINT, SIG_IGN);
	    (void) FUNC21(SIGQUIT, SIG_IGN);
	}
#ifdef OREO
	signal(SIGIO, SIG_IGN);	/* ignore SIGIO in child too */
#endif /* OREO */

	FUNC14(wanttty, pgrp);
	/*
	 * Nohup and nice apply only to NODE_COMMAND's but it would be nice
	 * (?!?) if you could say "nohup (foo;bar)" Then the parser would have
	 * to know about nice/nohup/time
	 */
	if (t->t_dflg & F_NOHUP)
	    (void) FUNC21(SIGHUP, SIG_IGN);
	if (t->t_dflg & F_NICE) {
	    int nval = FUNC0(t->t_nice);
#if defined(HAVE_SETPRIORITY) && defined(PRIO_PROCESS)
	    if (setpriority(PRIO_PROCESS, 0, nval) == -1 && errno)
		stderror(ERR_SYSTEM, "setpriority", strerror(errno));
#else /* !HAVE_SETPRIORITY || !PRIO_PROCESS */
	    (void) FUNC11(nval);
#endif /* HAVE_SETPRIORITY  && PRIO_PROCESS */
	}
#ifdef F_VER
        if (t->t_dflg & F_VER) {
	    tsetenv(STRSYSTYPE, t->t_systype ? STRbsd43 : STRsys53);
	    dohash(NULL, NULL);
	}
#endif /* F_VER */
#ifdef SIGSYNCH
	/* rfw 8/89 now parent can continue */
	if (kill(getppid(), SIGSYNCH))
	    stderror(ERR_SYSTEM, "pfork child: kill", strerror(errno));
#endif /* SIGSYNCH */

    }
    else {
#ifdef POSIXJOBS
        if (wanttty >= 0) {
	    /*
	     * `Walking' process group fix from Beto Appleton.
	     * (beto@aixwiz.austin.ibm.com)
	     * If setpgid fails at this point that means that
	     * our process leader has died. We flush the current
	     * job and become the process leader ourselves.
	     * The parent will figure that out later.
	     */
	    pgrp = pcurrjob ? pcurrjob->p_jobid : pid;
	    if (setpgid(pid, pgrp) == -1 && errno == EPERM) {
		pcurrjob = NULL;
		/* 
		 * We don't care if this causes an error here;
		 * then we are already in the right process group
		 */
		(void) setpgid(pid, pgrp = pid);
	    }
	}
#endif /* POSIXJOBS */
	FUNC12(pid, t);
#ifdef SIGSYNCH
	{
	    sigset_t pause_mask;

	/*
	 * rfw 8/89 Wait for child to own terminal.  Solves half of ugly
	 * synchronization problem.  With this change, we know that the only
	 * reason setpgrp to a previous process in a pipeline can fail is that
	 * the previous process has already exited. Without this hack, he may
	 * either have exited or not yet started to run.  Two uglies become
	 * one.
	 */
	    sigprocmask(SIG_BLOCK, NULL, &pause);
	    sigdelset(&pause_mask, SIGCHLD);
	    sigdelset(&pause_mask, SIGSYNCH);
	    sigsuspend(&pause_mask);
	    (void)handle_pending_signals();
	    if (sigaction(SIGSYNCH, &osa, NULL))
		stderror(ERR_SYSTEM, "pfork parent: sigaction restore",
			 strerror(errno));
	}
#endif /* SIGSYNCH */

	if (wanttty < 0)
	    FUNC3(&pchild_disabled);
    }
    return (pid);
}
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
typedef  int /*<<< orphan*/  sigfunc_t ;
typedef  int /*<<< orphan*/  ARGV_T ;

/* Variables and functions */
 scalar_t__ DaemonPid ; 
 scalar_t__ EX_OK ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 scalar_t__ ExternalEnviron ; 
 int /*<<< orphan*/  LOG_ALERT ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int LogLevel ; 
 int /*<<< orphan*/  NOQID ; 
 scalar_t__ PendingSignal ; 
 scalar_t__ RealUid ; 
 char* RestartRequest ; 
 scalar_t__ RunAsUid ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STDERR_FILENO ; 
 char** SaveArgv ; 
 scalar_t__ UseMSP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

void
FUNC14()
{
	bool drop;
	int save_errno;
	char *reason;
	sigfunc_t ignore, oalrm, ousr1;
	extern int DtableSize;

	/* clear the events to turn off SIGALRMs */
	FUNC9();
	FUNC8(true);

	reason = RestartRequest;
	RestartRequest = NULL;
	PendingSignal = 0;

	if (SaveArgv[0][0] != '/')
	{
		if (LogLevel > 3)
			FUNC13(LOG_INFO, NOQID,
				  "could not restart: need full path");
		FUNC6(false, true, EX_OSFILE);
		/* NOTREACHED */
	}
	if (LogLevel > 3)
		FUNC13(LOG_INFO, NOQID, "restarting %s due to %s",
			  SaveArgv[0],
			  reason == NULL ? "implicit call" : reason);

	FUNC3(true);
#if SM_CONF_SHM
	cleanup_shm(DaemonPid == getpid());
#endif /* SM_CONF_SHM */

	/* close locked pid file */
	FUNC2();

	/*
	**  Want to drop to the user who started the process in all cases
	**  *but* when running as "smmsp" for the clientmqueue queue run
	**  daemon.  In that case, UseMSP will be true, RunAsUid should not
	**  be root, and RealUid should be either 0 or RunAsUid.
	*/

	drop = !(UseMSP && RunAsUid != 0 &&
		 (RealUid == 0 || RealUid == RunAsUid));

	if (FUNC4(drop) != EX_OK)
	{
		if (LogLevel > 0)
			FUNC13(LOG_ALERT, NOQID,
				  "could not drop privileges: %s",
				  FUNC11(errno));
		FUNC6(false, true, EX_OSERR);
		/* NOTREACHED */
	}

	FUNC10(STDERR_FILENO + 1, DtableSize);

	/*
	**  Need to allow signals before execve() to make them "harmless".
	**  However, the default action can be "terminate", so it isn't
	**  really harmless.  Setting signals to IGN will cause them to be
	**  ignored in the new process to, so that isn't a good alternative.
	*/

	FUNC0(SIGALRM, oalrm);
	FUNC0(SIGCHLD, ignore);
	FUNC0(SIGHUP, ignore);
	FUNC0(SIGINT, ignore);
	FUNC0(SIGPIPE, ignore);
	FUNC0(SIGTERM, ignore);
#ifdef SIGUSR1
	SM_NOOP_SIGNAL(SIGUSR1, ousr1);
#endif /* SIGUSR1 */

	/* Turn back on signals */
	FUNC8(false);

	(void) FUNC5(SaveArgv[0], (ARGV_T) SaveArgv, (ARGV_T) ExternalEnviron);
	save_errno = errno;

	/* block signals again and restore needed signals */
	FUNC8(true);

	/* For finis() events */
	(void) FUNC12(SIGALRM, oalrm);

#ifdef SIGUSR1
	/* For debugging finis() */
	(void) sm_signal(SIGUSR1, ousr1);
#endif /* SIGUSR1 */

	errno = save_errno;
	if (LogLevel > 0)
		FUNC13(LOG_ALERT, NOQID, "could not exec %s: %s",
			  SaveArgv[0], FUNC11(errno));
	FUNC6(false, true, EX_OSFILE);
	/* NOTREACHED */
}
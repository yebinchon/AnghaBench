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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct rusage {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  ign ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int*,int /*<<< orphan*/ ,struct rusage*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 

int
FUNC10(const char *command)
{
	pid_t pid, savedpid;
	int pstat;
	struct sigaction ign, intact, quitact;
	sigset_t newsigblock, oldsigblock;

	if (!command)		/* just checking... */
		return(1);

	(void)FUNC8(&newsigblock);
	(void)FUNC7(&newsigblock, SIGCHLD);
	(void)FUNC7(&newsigblock, SIGINT);
	(void)FUNC7(&newsigblock, SIGQUIT);
	(void)FUNC1(SIG_BLOCK, &newsigblock, &oldsigblock);
	switch(pid = FUNC9()) {
	/*
	 * In the child, use unwrapped syscalls.  libthr is in
	 * undefined state after vfork().
	 */
	case -1:			/* error */
		(void)FUNC1(SIG_SETMASK, &oldsigblock, NULL);
		return (-1);
	case 0:				/* child */
		/*
		 * Restore original signal dispositions and exec the command.
		 */
		(void)FUNC2(SIG_SETMASK, &oldsigblock, NULL);
		FUNC5(_PATH_BSHELL, "sh", "-c", command, (char *)NULL);
		FUNC3(127);
	}
	/* 
	 * If we are running means that the child has either completed
	 * its execve, or has failed.
	 * Block SIGINT/QUIT because sh -c handles it and wait for
	 * it to clean up.
	 */
	FUNC6(&ign, 0, sizeof(ign));
	ign.sa_handler = SIG_IGN;
	(void)FUNC8(&ign.sa_mask);
	(void)FUNC0(SIGINT, &ign, &intact);
	(void)FUNC0(SIGQUIT, &ign, &quitact);
	savedpid = pid;
	do {
		pid = FUNC4(savedpid, &pstat, 0, (struct rusage *)0);
	} while (pid == -1 && errno == EINTR);
	(void)FUNC0(SIGINT, &intact, NULL);
	(void)FUNC0(SIGQUIT,  &quitact, NULL);
	(void)FUNC1(SIG_SETMASK, &oldsigblock, NULL);
	return (pid == -1 ? -1 : pstat);
}
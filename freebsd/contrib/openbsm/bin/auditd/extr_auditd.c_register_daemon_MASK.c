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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AUDITD_PIDFILE ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  auditd_relay_signal ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(void)
{
	struct sigaction action;
	FILE * pidfile;
	int fd;
	pid_t pid;

	/* Set up the signal hander. */
	action.sa_handler = auditd_relay_signal;
	/*
	 * sa_flags must not include SA_RESTART, so that read(2) will be
	 * interruptible in auditd_wait_for_events
	 */
	action.sa_flags = 0;
	FUNC12(&action.sa_mask);
	if (FUNC11(SIGTERM, &action, NULL) != 0) {
		FUNC2(
		    "Could not set signal handler for SIGTERM");
		FUNC3();
	}
	if (FUNC11(SIGCHLD, &action, NULL) != 0) {
		FUNC2(
		    "Could not set signal handler for SIGCHLD");
		FUNC3();
	}
	if (FUNC11(SIGHUP, &action, NULL) != 0) {
		FUNC2(
		    "Could not set signal handler for SIGHUP");
		FUNC3();
	}
	if (FUNC11(SIGALRM, &action, NULL) != 0) {
		FUNC2(
		    "Could not set signal handler for SIGALRM");
		FUNC3();
	}

	if ((pidfile = FUNC7(AUDITD_PIDFILE, "a")) == NULL) {
		FUNC2("Could not open PID file");
		FUNC1();
		return (-1);
	}

	/* Attempt to lock the pid file; if a lock is present, exit. */
	fd = FUNC5(pidfile);
	if (FUNC6(fd, LOCK_EX | LOCK_NB) < 0) {
		FUNC2(
		    "PID file is locked (is another auditd running?).");
		FUNC0();
		return (-1);
	}

	pid = FUNC10();
	FUNC9(fd, 0);
	if (FUNC8(pidfile, "%u\n", pid) < 0) {
		/* Should not start the daemon. */
		FUNC3();
	}

	FUNC4(pidfile);
	return (0);
}
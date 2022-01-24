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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(int chdirfd, int nullfd)
{
	struct sigaction osa, sa;
	pid_t newgrp;
	int oerrno;
	int osa_ok;

	/* A SIGHUP may be thrown when the parent exits below. */
	FUNC6(&sa.sa_mask);
	sa.sa_handler = SIG_IGN;
	sa.sa_flags = 0;
	osa_ok = FUNC0(SIGHUP, &sa, &osa);

	switch (FUNC4()) {
	case -1:
		return (-1);
	case 0:
		break;
	default:
		/*
		 * A fine point:  _exit(0), not exit(0), to avoid triggering
		 * atexit(3) processing
		 */
		FUNC2(0);
	}

	newgrp = FUNC5();
	oerrno = errno;
	if (osa_ok != -1)
		FUNC0(SIGHUP, &osa, NULL);

	if (newgrp == -1) {
		errno = oerrno;
		return (-1);
	}

	if (chdirfd != -1)
		(void)FUNC3(chdirfd);

	if (nullfd != -1) {
		(void)FUNC1(nullfd, STDIN_FILENO);
		(void)FUNC1(nullfd, STDOUT_FILENO);
		(void)FUNC1(nullfd, STDERR_FILENO);
	}
	return (0);
}
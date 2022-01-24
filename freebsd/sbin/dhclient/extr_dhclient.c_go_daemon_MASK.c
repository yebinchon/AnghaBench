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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ log_perror ; 
 scalar_t__ no_daemon ; 
 int nullfd ; 
 int /*<<< orphan*/ * pidfile ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(void)
{
	static int state = 0;
	cap_rights_t rights;

	if (no_daemon || state)
		return;

	state = 1;

	/* Stop logging to stderr... */
	log_perror = 0;

	if (FUNC3(-1, nullfd) == -1)
		FUNC4("daemon");

	FUNC0(&rights);

	if (pidfile != NULL) {
		FUNC6(pidfile);

		if (FUNC1(FUNC5(pidfile), &rights) < 0)
			FUNC4("can't limit pidfile descriptor: %m");
	}

	if (nullfd != -1) {
		FUNC2(nullfd);
		nullfd = -1;
	}

	if (FUNC1(STDIN_FILENO, &rights) < 0)
		FUNC4("can't limit stdin: %m");
	FUNC0(&rights, CAP_WRITE);
	if (FUNC1(STDOUT_FILENO, &rights) < 0)
		FUNC4("can't limit stdout: %m");
	if (FUNC1(STDERR_FILENO, &rights) < 0)
		FUNC4("can't limit stderr: %m");
}
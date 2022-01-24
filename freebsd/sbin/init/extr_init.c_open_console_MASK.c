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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_CONSOLE ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  _PATH_INITLOG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	int fd;

	/*
	 * Try to open /dev/console.  Open the device with O_NONBLOCK to
	 * prevent potential blocking on a carrier.
	 */
	FUNC6(_PATH_CONSOLE);
	if ((fd = FUNC5(_PATH_CONSOLE, O_RDWR | O_NONBLOCK)) != -1) {
		(void)FUNC3(fd, F_SETFL, FUNC3(fd, F_GETFL) & ~O_NONBLOCK);
		if (FUNC4(fd) == 0)
			return;
		FUNC1(fd);
	}

	/* No luck.  Log output to file if possible. */
	if ((fd = FUNC5(_PATH_DEVNULL, O_RDWR)) == -1) {
		FUNC7("cannot open null device.");
		FUNC0(1);
	}
	if (fd != STDIN_FILENO) {
		FUNC2(fd, STDIN_FILENO);
		FUNC1(fd);
	}
	fd = FUNC5(_PATH_INITLOG, O_WRONLY | O_APPEND | O_CREAT, 0644);
	if (fd == -1)
		FUNC2(STDIN_FILENO, STDOUT_FILENO);
	else if (fd != STDOUT_FILENO) {
		FUNC2(fd, STDOUT_FILENO);
		FUNC1(fd);
	}
	FUNC2(STDOUT_FILENO, STDERR_FILENO);
}
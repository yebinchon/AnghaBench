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
 int /*<<< orphan*/  LOG_WARNING ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 scalar_t__ PJDLOG_MODE_STD ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
	int fd;

	/*
	 * Close all (or almost all) descriptors.
	 */
	if (FUNC6() == PJDLOG_MODE_STD) {
		FUNC2(FUNC0(FUNC0(STDIN_FILENO, STDOUT_FILENO),
		    STDERR_FILENO) + 1);
		return;
	}

	FUNC2(0);

	/*
	 * Redirect stdin, stdout and stderr to /dev/null.
	 */
	fd = FUNC4(_PATH_DEVNULL, O_RDONLY);
	if (fd == -1) {
		FUNC5(LOG_WARNING, "Unable to open %s for reading",
		    _PATH_DEVNULL);
	} else if (fd != STDIN_FILENO) {
		if (FUNC3(fd, STDIN_FILENO) == -1) {
			FUNC5(LOG_WARNING,
			    "Unable to duplicate descriptor for stdin");
		}
		FUNC1(fd);
	}
	fd = FUNC4(_PATH_DEVNULL, O_WRONLY);
	if (fd == -1) {
		FUNC5(LOG_WARNING, "Unable to open %s for writing",
		    _PATH_DEVNULL);
	} else {
		if (fd != STDOUT_FILENO && FUNC3(fd, STDOUT_FILENO) == -1) {
			FUNC5(LOG_WARNING,
			    "Unable to duplicate descriptor for stdout");
		}
		if (fd != STDERR_FILENO && FUNC3(fd, STDERR_FILENO) == -1) {
			FUNC5(LOG_WARNING,
			    "Unable to duplicate descriptor for stderr");
		}
		if (fd != STDOUT_FILENO && fd != STDERR_FILENO)
			FUNC1(fd);
	}
}
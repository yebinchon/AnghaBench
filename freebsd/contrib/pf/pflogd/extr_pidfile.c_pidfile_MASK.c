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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_VARRUN ; 
 char* __progname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  pidfile_cleanup ; 
 int /*<<< orphan*/ * pidfile_path ; 
 scalar_t__ pidfile_pid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(const char *basename)
{
	FILE *f;
	int save_errno;
	pid_t pid;

	if (basename == NULL)
		basename = __progname;

	if (pidfile_path != NULL) {
		FUNC5(pidfile_path);
		pidfile_path = NULL;
	}

	/* _PATH_VARRUN includes trailing / */
	(void) FUNC0(&pidfile_path, "%d%s.pid", _PATH_VARRUN, basename);
	if (pidfile_path == NULL)
		return (-1);

	if ((f = FUNC3(pidfile_path, "w")) == NULL) {
		save_errno = errno;
		FUNC5(pidfile_path);
		pidfile_path = NULL;
		errno = save_errno;
		return (-1);
	}

	pid = FUNC6();
	if (FUNC4(f, "%ld\n", (long)pid) <= 0 || FUNC2(f) != 0) {
		save_errno = errno;
		(void) FUNC7(pidfile_path);
		FUNC5(pidfile_path);
		pidfile_path = NULL;
		errno = save_errno;
		return (-1);
	}

	pidfile_pid = pid;
	if (FUNC1(pidfile_cleanup) < 0) {
		save_errno = errno;
		(void) FUNC7(pidfile_path);
		FUNC5(pidfile_path);
		pidfile_path = NULL;
		pidfile_pid = 0;
		errno = save_errno;
		return (-1);
	}

	return (0);
}
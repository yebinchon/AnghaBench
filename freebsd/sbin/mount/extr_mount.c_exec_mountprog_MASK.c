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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  _PATH_SYSPATH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,char* const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * sys_siglist ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC10(const char *name, const char *execname, char *const argv[])
{
	pid_t pid;
	int status;

	switch (pid = FUNC6()) {
	case -1:				/* Error. */
		FUNC8("fork");
		FUNC5 (1);
	case 0:					/* Child. */
		/* Go find an executable. */
		FUNC4(execname, _PATH_SYSPATH, argv);
		if (errno == ENOENT) {
			FUNC8("exec %s not found", execname);
			if (execname[0] != '/') {
				FUNC9("in path: %s", _PATH_SYSPATH);
			}
		}
		FUNC5(1);
	default:				/* Parent. */
		if (FUNC7(pid, &status, 0) < 0) {
			FUNC8("waitpid");
			return (1);
		}

		if (FUNC1(status)) {
			if (FUNC0(status) != 0)
				return (FUNC0(status));
		} else if (FUNC2(status)) {
			FUNC9("%s: %s", name, sys_siglist[FUNC3(status)]);
			return (1);
		}
		break;
	}

	return (0);
}
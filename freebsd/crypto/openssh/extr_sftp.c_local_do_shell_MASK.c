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
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (scalar_t__) ; 
 int FUNC11 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(const char *args)
{
	int status;
	char *shell;
	pid_t pid;

	if (!*args)
		args = NULL;

	if ((shell = FUNC9("SHELL")) == NULL || *shell == '\0')
		shell = _PATH_BSHELL;

	if ((pid = FUNC7()) == -1)
		FUNC6("Couldn't fork: %s", FUNC10(errno));

	if (pid == 0) {
		/* XXX: child has pipe fds to ssh subproc open - issue? */
		if (args) {
			FUNC3("Executing %s -c \"%s\"", shell, args);
			FUNC5(shell, shell, "-c", args, (char *)NULL);
		} else {
			FUNC3("Executing %s", shell);
			FUNC5(shell, shell, (char *)NULL);
		}
		FUNC8(stderr, "Couldn't execute \"%s\": %s\n", shell,
		    FUNC10(errno));
		FUNC2(1);
	}
	while (FUNC11(pid, &status, 0) == -1)
		if (errno != EINTR)
			FUNC6("Couldn't wait for child: %s", FUNC10(errno));
	if (!FUNC1(status))
		FUNC4("Shell exited abnormally");
	else if (FUNC0(status))
		FUNC4("Shell exited with status %d", FUNC0(status));
}
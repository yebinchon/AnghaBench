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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  env ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(void)
{
    char *prog, *argv0;
    pid_t pid;

    prog = FUNC6("logout_program");
    if(prog == NULL)
	return 0;
    argv0 = FUNC9(prog, '/');

    if(argv0)
	argv0++;
    else
	argv0 = prog;

    pid = FUNC4();
    if(pid == 0) {
	/* avoid getting signals sent to the shell */
	FUNC7(0, FUNC5());
	return 0;
    }
    if(pid == -1)
	FUNC2(1, "fork");
    /* wait for the real login process to exit */
#ifdef HAVE_SETPROCTITLE
    setproctitle("waitpid %d", pid);
#endif
    while(1) {
	int status;
	int ret;
	ret = FUNC10(pid, &status, 0);
	if(ret > 0) {
	    if(FUNC0(status) || FUNC1(status)) {
		FUNC3(prog, argv0, NULL, env);
		FUNC2(1, "exec %s", prog);
	    }
	} else if(ret < 0)
	    FUNC2(1, "waitpid");
    }
}
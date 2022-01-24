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
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(char *command)
{
    char   *error;
    int     tmp_fd;

    /*
     * Systems with POSIX sessions may send a SIGHUP to grandchildren if the
     * child exits first. This is sick, sessions were invented for terminals.
     */

    FUNC5(SIGHUP, SIG_IGN);

    /* Set up new stdin, stdout, stderr, and exec the shell command. */

    for (tmp_fd = 0; tmp_fd < 3; tmp_fd++)
	(void) FUNC1(tmp_fd);
    if (FUNC4("/dev/null", 2) != 0) {
	error = "open /dev/null: %m";
    } else if (FUNC2(0) != 1 || FUNC2(0) != 2) {
	error = "dup: %m";
    } else {
	(void) FUNC3("/bin/sh", "sh", "-c", command, (char *) 0);
	error = "execl /bin/sh: %m";
    }

    /* Something went wrong. We MUST terminate the child process. */

    FUNC6(error);
    FUNC0(0);
}
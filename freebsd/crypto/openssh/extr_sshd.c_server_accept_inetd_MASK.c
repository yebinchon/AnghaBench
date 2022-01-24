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
 int /*<<< orphan*/  O_RDWR ; 
 int REEXEC_CONFIG_PASS_FD ; 
 int REEXEC_STARTUP_PIPE_FD ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  debug_flag ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ log_stderr ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rexeced_flag ; 
 int startup_pipe ; 

__attribute__((used)) static void
FUNC5(int *sock_in, int *sock_out)
{
	int fd;

	startup_pipe = -1;
	if (rexeced_flag) {
		FUNC0(REEXEC_CONFIG_PASS_FD);
		*sock_in = *sock_out = FUNC2(STDIN_FILENO);
		if (!debug_flag) {
			startup_pipe = FUNC2(REEXEC_STARTUP_PIPE_FD);
			FUNC0(REEXEC_STARTUP_PIPE_FD);
		}
	} else {
		*sock_in = FUNC2(STDIN_FILENO);
		*sock_out = FUNC2(STDOUT_FILENO);
	}
	/*
	 * We intentionally do not close the descriptors 0, 1, and 2
	 * as our code for setting the descriptors won't work if
	 * ttyfd happens to be one of those.
	 */
	if ((fd = FUNC4(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
		FUNC3(fd, STDIN_FILENO);
		FUNC3(fd, STDOUT_FILENO);
		if (!log_stderr)
			FUNC3(fd, STDERR_FILENO);
		if (fd > (log_stderr ? STDERR_FILENO : STDOUT_FILENO))
			FUNC0(fd);
	}
	FUNC1("inetd sockets after dupping: %d, %d", *sock_in, *sock_out);
}
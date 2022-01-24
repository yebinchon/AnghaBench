#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssh_program ; 
 int sshport ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ verbose_mode ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 

int
FUNC11(char *host, char *remuser, int port, char *cmd, int fdin, int fdout)
{
	pid_t pid;
	int status;

	if (verbose_mode)
		FUNC5(stderr,
		    "Executing: 2nd program %s host %s, user %s, command %s\n",
		    ssh_program, host,
		    remuser ? remuser : "(unspecified)", cmd);

	if (port == -1)
		port = sshport;

	/* Fork a child to execute the command on the remote host using ssh. */
	pid = FUNC6();
	if (pid == 0) {
		FUNC1(fdin, 0);
		FUNC1(fdout, 1);

		FUNC8(&args, 0, "%s", ssh_program);
		if (port != -1) {
			FUNC0(&args, "-p");
			FUNC0(&args, "%d", port);
		}
		if (remuser != NULL) {
			FUNC0(&args, "-l");
			FUNC0(&args, "%s", remuser);
		}
		FUNC0(&args, "--");
		FUNC0(&args, "%s", host);
		FUNC0(&args, "%s", cmd);

		FUNC2(ssh_program, args.list);
		FUNC7(ssh_program);
		FUNC3(1);
	} else if (pid == -1) {
		FUNC4("fork: %s", FUNC9(errno));
	}
	while (FUNC10(pid, &status, 0) == -1)
		if (errno != EINTR)
			FUNC4("do_cmd2: waitpid: %s", FUNC9(errno));
	return 0;
}
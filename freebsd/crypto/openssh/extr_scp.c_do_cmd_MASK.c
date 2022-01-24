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
struct TYPE_4__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int do_cmd_pid ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  killchild ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssh_program ; 
 int sshport ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suspchild ; 
 scalar_t__ verbose_mode ; 

int
FUNC13(char *host, char *remuser, int port, char *cmd, int *fdin, int *fdout)
{
	int pin[2], pout[2], reserved[2];

	if (verbose_mode)
		FUNC6(stderr,
		    "Executing: program %s host %s, user %s, command %s\n",
		    ssh_program, host,
		    remuser ? remuser : "(unspecified)", cmd);

	if (port == -1)
		port = sshport;

	/*
	 * Reserve two descriptors so that the real pipes won't get
	 * descriptors 0 and 1 because that will screw up dup2 below.
	 */
	if (FUNC9(reserved) < 0)
		FUNC5("pipe: %s", FUNC12(errno));

	/* Create a socket pair for communicating with ssh. */
	if (FUNC9(pin) < 0)
		FUNC5("pipe: %s", FUNC12(errno));
	if (FUNC9(pout) < 0)
		FUNC5("pipe: %s", FUNC12(errno));

	/* Free the reserved descriptors. */
	FUNC1(reserved[0]);
	FUNC1(reserved[1]);

	FUNC11(SIGTSTP, suspchild);
	FUNC11(SIGTTIN, suspchild);
	FUNC11(SIGTTOU, suspchild);

	/* Fork a child to execute the command on the remote host using ssh. */
	do_cmd_pid = FUNC7();
	if (do_cmd_pid == 0) {
		/* Child. */
		FUNC1(pin[1]);
		FUNC1(pout[0]);
		FUNC2(pin[0], 0);
		FUNC2(pout[1], 1);
		FUNC1(pin[0]);
		FUNC1(pout[1]);

		FUNC10(&args, 0, "%s", ssh_program);
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

		FUNC3(ssh_program, args.list);
		FUNC8(ssh_program);
		FUNC4(1);
	} else if (do_cmd_pid == -1) {
		FUNC5("fork: %s", FUNC12(errno));
	}
	/* Parent.  Close the other side, and return the local side. */
	FUNC1(pin[0]);
	*fdout = pin[1];
	FUNC1(pout[1]);
	*fdin = pout[0];
	FUNC11(SIGTERM, killchild);
	FUNC11(SIGINT, killchild);
	FUNC11(SIGHUP, killchild);
	return 0;
}
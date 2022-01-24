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
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  killchild ; 
 int FUNC7 (int*) ; 
 int /*<<< orphan*/  sigchld_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int sshpid ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suspchild ; 

__attribute__((used)) static void
FUNC11(char *path, char **args, int *in, int *out)
{
	int c_in, c_out;

#ifdef USE_PIPES
	int pin[2], pout[2];

	if ((pipe(pin) == -1) || (pipe(pout) == -1))
		fatal("pipe: %s", strerror(errno));
	*in = pin[0];
	*out = pout[1];
	c_in = pout[0];
	c_out = pin[1];
#else /* USE_PIPES */
	int inout[2];

	if (FUNC9(AF_UNIX, SOCK_STREAM, 0, inout) == -1)
		FUNC4("socketpair: %s", FUNC10(errno));
	*in = *out = inout[0];
	c_in = c_out = inout[1];
#endif /* USE_PIPES */

	if ((sshpid = FUNC5()) == -1)
		FUNC4("fork: %s", FUNC10(errno));
	else if (sshpid == 0) {
		if ((FUNC2(c_in, STDIN_FILENO) == -1) ||
		    (FUNC2(c_out, STDOUT_FILENO) == -1)) {
			FUNC6(stderr, "dup2: %s\n", FUNC10(errno));
			FUNC0(1);
		}
		FUNC1(*in);
		FUNC1(*out);
		FUNC1(c_in);
		FUNC1(c_out);

		/*
		 * The underlying ssh is in the same process group, so we must
		 * ignore SIGINT if we want to gracefully abort commands,
		 * otherwise the signal will make it to the ssh process and
		 * kill it too.  Contrawise, since sftp sends SIGTERMs to the
		 * underlying ssh, it must *not* ignore that signal.
		 */
		FUNC8(SIGINT, SIG_IGN);
		FUNC8(SIGTERM, SIG_DFL);
		FUNC3(path, args);
		FUNC6(stderr, "exec: %s: %s\n", path, FUNC10(errno));
		FUNC0(1);
	}

	FUNC8(SIGTERM, killchild);
	FUNC8(SIGINT, killchild);
	FUNC8(SIGHUP, killchild);
	FUNC8(SIGTSTP, suspchild);
	FUNC8(SIGTTIN, suspchild);
	FUNC8(SIGTTOU, suspchild);
	FUNC8(SIGCHLD, sigchld_handler);
	FUNC1(c_in);
	FUNC1(c_out);
}
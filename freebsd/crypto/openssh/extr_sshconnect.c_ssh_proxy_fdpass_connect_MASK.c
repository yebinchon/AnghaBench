#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct ssh {int dummy; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (int) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC13 (struct ssh*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct ssh *ssh, const char *host, u_short port,
    const char *proxy_command)
{
	char *command_string;
	int sp[2], sock;
	pid_t pid;
	char *shell;

	if ((shell = FUNC9("SHELL")) == NULL)
		shell = _PATH_BSHELL;

	if (FUNC12(AF_UNIX, SOCK_STREAM, 0, sp) < 0)
		FUNC6("Could not create socketpair to communicate with "
		    "proxy dialer: %.100s", FUNC14(errno));

	command_string = FUNC5(proxy_command, options.user,
	    host, port);
	FUNC1("Executing proxy dialer command: %.500s", command_string);

	/* Fork and execute the proxy command. */
	if ((pid = FUNC7()) == 0) {
		char *argv[10];

		FUNC0(sp[1]);
		/* Redirect stdin and stdout. */
		if (sp[0] != 0) {
			if (FUNC2(sp[0], 0) < 0)
				FUNC11("dup2 stdin");
		}
		if (sp[0] != 1) {
			if (FUNC2(sp[0], 1) < 0)
				FUNC11("dup2 stdout");
		}
		if (sp[0] >= 2)
			FUNC0(sp[0]);

		/*
		 * Stderr is left as it is so that error messages get
		 * printed on the user's terminal.
		 */
		argv[0] = shell;
		argv[1] = "-c";
		argv[2] = command_string;
		argv[3] = NULL;

		/*
		 * Execute the proxy command.
		 * Note that we gave up any extra privileges above.
		 */
		FUNC3(argv[0], argv);
		FUNC11(argv[0]);
		FUNC4(1);
	}
	/* Parent. */
	if (pid < 0)
		FUNC6("fork failed: %.100s", FUNC14(errno));
	FUNC0(sp[0]);
	FUNC8(command_string);

	if ((sock = FUNC10(sp[1])) == -1)
		FUNC6("proxy dialer did not pass back a connection");
	FUNC0(sp[1]);

	while (FUNC15(pid, NULL, 0) == -1)
		if (errno != EINTR)
			FUNC6("Couldn't wait for child: %s", FUNC14(errno));

	/* Set the connection file descriptors. */
	if (FUNC13(ssh, sock, sock) == NULL)
		return -1; /* ssh_packet_set_connection logs error */

	return 0;
}
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
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int*) ; 
 scalar_t__ proxy_command_pid ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (struct ssh*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct ssh *ssh, const char *host, u_short port,
    const char *proxy_command)
{
	char *command_string;
	int pin[2], pout[2];
	pid_t pid;
	char *shell;

	if ((shell = FUNC9("SHELL")) == NULL || *shell == '\0')
		shell = _PATH_BSHELL;

	/* Create pipes for communicating with the proxy. */
	if (FUNC11(pin) < 0 || FUNC11(pout) < 0)
		FUNC6("Could not create pipes to communicate with the proxy: %.100s",
		    FUNC14(errno));

	command_string = FUNC5(proxy_command, options.user,
	    host, port);
	FUNC1("Executing proxy command: %.500s", command_string);

	/* Fork and execute the proxy command. */
	if ((pid = FUNC7()) == 0) {
		char *argv[10];

		/* Redirect stdin and stdout. */
		FUNC0(pin[1]);
		if (pin[0] != 0) {
			if (FUNC2(pin[0], 0) < 0)
				FUNC10("dup2 stdin");
			FUNC0(pin[0]);
		}
		FUNC0(pout[0]);
		if (FUNC2(pout[1], 1) < 0)
			FUNC10("dup2 stdout");
		/* Cannot be 1 because pin allocated two descriptors. */
		FUNC0(pout[1]);

		/* Stderr is left as it is so that error messages get
		   printed on the user's terminal. */
		argv[0] = shell;
		argv[1] = "-c";
		argv[2] = command_string;
		argv[3] = NULL;

		/* Execute the proxy command.  Note that we gave up any
		   extra privileges above. */
		FUNC12(SIGPIPE, SIG_DFL);
		FUNC3(argv[0], argv);
		FUNC10(argv[0]);
		FUNC4(1);
	}
	/* Parent. */
	if (pid < 0)
		FUNC6("fork failed: %.100s", FUNC14(errno));
	else
		proxy_command_pid = pid; /* save pid to clean up later */

	/* Close child side of the descriptors. */
	FUNC0(pin[0]);
	FUNC0(pout[1]);

	/* Free the command name. */
	FUNC8(command_string);

	/* Set the connection file descriptors. */
	if (FUNC13(ssh, pout[0], pin[1]) == NULL)
		return -1; /* ssh_packet_set_connection logs error */

	return 0;
}
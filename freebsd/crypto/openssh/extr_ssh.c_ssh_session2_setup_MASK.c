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
struct ssh {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_qos_bulk; int /*<<< orphan*/  ip_qos_interactive; scalar_t__ forward_agent; int /*<<< orphan*/  forward_x11_timeout; int /*<<< orphan*/  forward_x11_trusted; int /*<<< orphan*/  xauth_location; scalar_t__ forward_x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIRM_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (struct ssh*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  command ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  subsystem_flag ; 
 int tty_flag ; 
 int /*<<< orphan*/  FUNC10 (struct ssh*,int,char const*,char*,char*,int) ; 

__attribute__((used)) static void
FUNC11(struct ssh *ssh, int id, int success, void *arg)
{
	extern char **environ;
	const char *display;
	int interactive = tty_flag;
	char *proto = NULL, *data = NULL;

	if (!success)
		return; /* No need for error message, channels code sens one */

	display = FUNC7("DISPLAY");
	if (display == NULL && options.forward_x11)
		FUNC5("X11 forwarding requested but DISPLAY not set");
	if (options.forward_x11 && FUNC4(ssh, display,
	    options.xauth_location, options.forward_x11_trusted,
	    options.forward_x11_timeout, &proto, &data) == 0) {
		/* Request forwarding with authentication spoofing. */
		FUNC5("Requesting X11 forwarding with authentication "
		    "spoofing.");
		FUNC10(ssh, id, display, proto,
		    data, 1);
		FUNC2(ssh, id, "X11 forwarding", CONFIRM_WARN);
		/* XXX exit_on_forward_failure */
		interactive = 1;
	}

	FUNC1();
	if (options.forward_agent) {
		FUNC5("Requesting authentication agent forwarding.");
		FUNC0(ssh, id, "auth-agent-req@openssh.com", 0);
		FUNC8();
	}

	/* Tell the packet module whether this is an interactive session. */
	FUNC9(interactive,
	    options.ip_qos_interactive, options.ip_qos_bulk);

	FUNC3(ssh, id, tty_flag, subsystem_flag, FUNC7("TERM"),
	    NULL, FUNC6(stdin), command, environ);
}
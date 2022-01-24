#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  session_type ;
struct TYPE_11__ {char* force_command; } ;
struct TYPE_10__ {char* adm_forced_command; } ;
struct TYPE_9__ {char* subsys; int ttyfd; char* tty; TYPE_1__* pw; int /*<<< orphan*/  self; scalar_t__ is_subsystem; } ;
struct TYPE_8__ {char* pw_shell; int /*<<< orphan*/  pw_name; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBSYSTEM_EXT ; 
 scalar_t__ SUBSYSTEM_INT_SFTP ; 
 scalar_t__ SUBSYSTEM_INT_SFTP_ERROR ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_7__* auth_opts ; 
 int FUNC3 (struct ssh*,TYPE_2__*,char const*) ; 
 int FUNC4 (struct ssh*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  loginmsg ; 
 TYPE_3__ options ; 
 char const* original_command ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct ssh *ssh, Session *s, const char *command)
{
	int ret;
	const char *forced = NULL, *tty = NULL;
	char session_type[1024];

	if (options.adm_forced_command) {
		original_command = command;
		command = options.adm_forced_command;
		forced = "(config)";
	} else if (auth_opts->force_command != NULL) {
		original_command = command;
		command = auth_opts->force_command;
		forced = "(key-option)";
	}
	if (forced != NULL) {
		if (FUNC0(command)) {
			s->is_subsystem = s->is_subsystem ?
			    SUBSYSTEM_INT_SFTP : SUBSYSTEM_INT_SFTP_ERROR;
		} else if (s->is_subsystem)
			s->is_subsystem = SUBSYSTEM_EXT;
		FUNC5(session_type, sizeof(session_type),
		    "forced-command %s '%.900s'", forced, command);
	} else if (s->is_subsystem) {
		FUNC5(session_type, sizeof(session_type),
		    "subsystem '%.900s'", s->subsys);
	} else if (command == NULL) {
		FUNC5(session_type, sizeof(session_type), "shell");
	} else {
		/* NB. we don't log unforced commands to preserve privacy */
		FUNC5(session_type, sizeof(session_type), "command");
	}

	if (s->ttyfd != -1) {
		tty = s->tty;
		if (FUNC9(tty, "/dev/", 5) == 0)
			tty += 5;
	}

	FUNC10("Starting session: %s%s%s for %s from %.200s port %d id %d",
	    session_type,
	    tty == NULL ? "" : " on ",
	    tty == NULL ? "" : tty,
	    s->pw->pw_name,
	    FUNC6(ssh),
	    FUNC7(ssh),
	    s->self);

#ifdef SSH_AUDIT_EVENTS
	if (command != NULL)
		PRIVSEP(audit_run_command(command));
	else if (s->ttyfd == -1) {
		char *shell = s->pw->pw_shell;

		if (shell[0] == '\0')	/* empty shell means /bin/sh */
			shell =_PATH_BSHELL;
		PRIVSEP(audit_run_command(shell));
	}
#endif
	if (s->ttyfd != -1)
		ret = FUNC4(ssh, s, command);
	else
		ret = FUNC3(ssh, s, command);

	original_command = NULL;

	/*
	 * Clear loginmsg: it's the child's responsibility to display
	 * it to the user, otherwise multiple sessions may accumulate
	 * multiple copies of the login messages.
	 */
	FUNC8(loginmsg);

	return ret;
}
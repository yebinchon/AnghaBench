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
struct wpa_ctrl {int dummy; } ;
struct hostapd_cli_cmd {char* cmd; int /*<<< orphan*/  (* handler ) (struct wpa_ctrl*,int,char**) ;} ;

/* Variables and functions */
 struct hostapd_cli_cmd* hostapd_cli_commands ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_ctrl*,int,char**) ; 

__attribute__((used)) static void FUNC5(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
	const struct hostapd_cli_cmd *cmd, *match = NULL;
	int count;

	count = 0;
	cmd = hostapd_cli_commands;
	while (cmd->cmd) {
		if (FUNC3(cmd->cmd, argv[0], FUNC2(argv[0])) == 0) {
			match = cmd;
			if (FUNC0(cmd->cmd, argv[0]) == 0) {
				/* we have an exact match */
				count = 1;
				break;
			}
			count++;
		}
		cmd++;
	}

	if (count > 1) {
		FUNC1("Ambiguous command '%s'; possible commands:", argv[0]);
		cmd = hostapd_cli_commands;
		while (cmd->cmd) {
			if (FUNC3(cmd->cmd, argv[0], FUNC2(argv[0])) ==
			    0) {
				FUNC1(" %s", cmd->cmd);
			}
			cmd++;
		}
		FUNC1("\n");
	} else if (count == 0) {
		FUNC1("Unknown command '%s'\n", argv[0]);
	} else {
		match->handler(ctrl, argc - 1, &argv[1]);
	}
}
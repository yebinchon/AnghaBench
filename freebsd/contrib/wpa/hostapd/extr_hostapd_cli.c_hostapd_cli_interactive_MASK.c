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
 char* CONFIG_HOSTAPD_CLI_HISTORY_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  hostapd_cli_edit_cmd_cb ; 
 int /*<<< orphan*/  hostapd_cli_edit_completion_cb ; 
 int /*<<< orphan*/  hostapd_cli_edit_eof_cb ; 
 int /*<<< orphan*/  hostapd_cli_eloop_terminate ; 
 int /*<<< orphan*/  hostapd_cli_ping ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,char const*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  ping_interval ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  stations ; 

__attribute__((used)) static void FUNC13(void)
{
	char *hfile = NULL;
	char *home;

	FUNC12("\nInteractive mode\n\n");

#ifdef CONFIG_HOSTAPD_CLI_HISTORY_DIR
	home = CONFIG_HOSTAPD_CLI_HISTORY_DIR;
#else /* CONFIG_HOSTAPD_CLI_HISTORY_DIR */
	home = FUNC7("HOME");
#endif /* CONFIG_HOSTAPD_CLI_HISTORY_DIR */
	if (home) {
		const char *fname = ".hostapd_cli_history";
		int hfile_len = FUNC11(home) + 1 + FUNC11(fname) + 1;
		hfile = FUNC9(hfile_len);
		if (hfile)
			FUNC10(hfile, hfile_len, "%s/%s", home, fname);
	}

	FUNC4(hostapd_cli_eloop_terminate, NULL);
	FUNC2(hostapd_cli_edit_cmd_cb, hostapd_cli_edit_eof_cb,
		  hostapd_cli_edit_completion_cb, NULL, hfile, NULL);
	FUNC5(ping_interval, 0, hostapd_cli_ping, NULL, NULL);

	FUNC6();

	FUNC0(&stations);
	FUNC1(hfile, NULL);
	FUNC8(hfile);
	FUNC3(hostapd_cli_ping, NULL, NULL);
}
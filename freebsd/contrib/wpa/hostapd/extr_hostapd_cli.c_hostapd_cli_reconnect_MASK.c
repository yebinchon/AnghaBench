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
 int /*<<< orphan*/  action_file ; 
 int /*<<< orphan*/  ctrl_conn ; 
 char* ctrl_ifname ; 
 int hostapd_cli_attached ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  interactive ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *ifname)
{
	char *next_ctrl_ifname;

	FUNC0();

	if (!ifname)
		return -1;

	next_ctrl_ifname = FUNC3(ifname);
	FUNC2(ctrl_ifname);
	ctrl_ifname = next_ctrl_ifname;
	if (!ctrl_ifname)
		return -1;

	ctrl_conn = FUNC1(ctrl_ifname);
	if (!ctrl_conn)
		return -1;
	if (!interactive && !action_file)
		return 0;
	if (FUNC7(ctrl_conn) == 0) {
		hostapd_cli_attached = 1;
		FUNC5(ctrl_conn);
		FUNC6(ctrl_conn);
	} else {
		FUNC4("Warning: Failed to attach to hostapd.\n");
	}
	return 0;
}
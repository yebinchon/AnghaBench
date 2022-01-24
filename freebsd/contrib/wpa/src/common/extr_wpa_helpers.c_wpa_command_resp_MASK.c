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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC3 (struct wpa_ctrl*,char const*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *) ; 
 struct wpa_ctrl* FUNC4 (char const*) ; 

int FUNC5(const char *ifname, const char *cmd,
		     char *resp, size_t resp_size)
{
	struct wpa_ctrl *ctrl;
	size_t len;

	FUNC0("wpa_command(ifname='%s', cmd='%s')\n", ifname, cmd);
	ctrl = FUNC4(ifname);
	if (ctrl == NULL)
		return -1;
	len = resp_size;
	if (FUNC3(ctrl, cmd, FUNC1(cmd), resp, &len, NULL) < 0) {
		FUNC0("wpa_command: wpa_ctrl_request failed\n");
		FUNC2(ctrl);
		return -1;
	}
	FUNC2(ctrl);
	resp[len] = '\0';
	return 0;
}
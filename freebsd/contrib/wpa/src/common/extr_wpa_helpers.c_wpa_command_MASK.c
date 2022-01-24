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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC4 (struct wpa_ctrl*,char const*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *) ; 
 struct wpa_ctrl* FUNC5 (char const*) ; 

int FUNC6(const char *ifname, const char *cmd)
{
	struct wpa_ctrl *ctrl;
	char buf[128];
	size_t len;

	FUNC0("wpa_command(ifname='%s', cmd='%s')\n", ifname, cmd);
	ctrl = FUNC5(ifname);
	if (ctrl == NULL)
		return -1;
	len = sizeof(buf);
	if (FUNC4(ctrl, cmd, FUNC1(cmd), buf, &len, NULL) < 0) {
		FUNC0("wpa_command: wpa_ctrl_request failed\n");
		FUNC3(ctrl);
		return -1;
	}
	FUNC3(ctrl);
	buf[len] = '\0';
	if (FUNC2(buf, "FAIL", 4) == 0) {
		FUNC0("wpa_command: Command failed (FAIL received)\n");
		return -1;
	}
	return 0;
}
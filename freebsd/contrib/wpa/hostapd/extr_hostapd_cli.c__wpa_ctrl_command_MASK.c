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
 int /*<<< orphan*/ * ctrl_conn ; 
 int /*<<< orphan*/  hostapd_cli_msg_cb ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (struct wpa_ctrl*,char const*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wpa_ctrl *ctrl, const char *cmd, int print)
{
	char buf[4096];
	size_t len;
	int ret;

	if (ctrl_conn == NULL) {
		FUNC0("Not connected to hostapd - command dropped.\n");
		return -1;
	}
	len = sizeof(buf) - 1;
	ret = FUNC2(ctrl, cmd, FUNC1(cmd), buf, &len,
			       hostapd_cli_msg_cb);
	if (ret == -2) {
		FUNC0("'%s' command timed out.\n", cmd);
		return -2;
	} else if (ret < 0) {
		FUNC0("'%s' command failed.\n", cmd);
		return -1;
	}
	if (print) {
		buf[len] = '\0';
		FUNC0("%s", buf);
	}
	return 0;
}
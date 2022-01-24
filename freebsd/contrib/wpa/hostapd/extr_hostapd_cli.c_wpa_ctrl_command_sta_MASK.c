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
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (struct wpa_ctrl*,char const*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wpa_ctrl *ctrl, const char *cmd,
				char *addr, size_t addr_len, int print)
{
	char buf[4096], *pos;
	size_t len;
	int ret;

	if (ctrl_conn == NULL) {
		FUNC2("Not connected to hostapd - command dropped.\n");
		return -1;
	}
	len = sizeof(buf) - 1;
	ret = FUNC4(ctrl, cmd, FUNC3(cmd), buf, &len,
			       hostapd_cli_msg_cb);
	if (ret == -2) {
		FUNC2("'%s' command timed out.\n", cmd);
		return -2;
	} else if (ret < 0) {
		FUNC2("'%s' command failed.\n", cmd);
		return -1;
	}

	buf[len] = '\0';
	if (FUNC0(buf, "FAIL", 4) == 0)
		return -1;
	if (print)
		FUNC2("%s", buf);

	pos = buf;
	while (*pos != '\0' && *pos != '\n')
		pos++;
	*pos = '\0';
	FUNC1(addr, buf, addr_len);
	return 0;
}
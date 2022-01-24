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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * ctrl_conn ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC4 (struct wpa_ctrl*,char*,size_t*) ; 

__attribute__((used)) static void FUNC5(struct wpa_ctrl *ctrl, int in_read,
				     int action_monitor)
{
	int first = 1;
	if (ctrl_conn == NULL)
		return;
	while (FUNC3(ctrl)) {
		char buf[4096];
		size_t len = sizeof(buf) - 1;
		if (FUNC4(ctrl, buf, &len) == 0) {
			buf[len] = '\0';
			if (action_monitor)
				FUNC1(buf, len);
			else {
				FUNC0(buf);
				if (in_read && first)
					FUNC2("\n");
				first = 0;
				FUNC2("%s\n", buf);
			}
		} else {
			FUNC2("Could not read pending message.\n");
			break;
		}
	}
}
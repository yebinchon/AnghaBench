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
 scalar_t__ FUNC0 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_ctrl*) ; 
 struct wpa_ctrl* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_ctrl*,char*,size_t*) ; 

int FUNC6(int argc, char *argv[])
{
	struct wpa_ctrl *ctrl;

	ctrl = FUNC3("foo");
	if (!ctrl)
		return -1;
	if (FUNC0(ctrl) == 0)
		FUNC2(ctrl);
	if (FUNC4(ctrl)) {
		char buf[10];
		size_t len;

		len = sizeof(buf);
		FUNC5(ctrl, buf, &len);
	}
	FUNC1(ctrl);

	return 0;
}
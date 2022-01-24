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
 char* ctrl_ifname ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_ctrl *ctrl, int argc,
				     char *argv[])
{
	if (argc < 1) {
		FUNC0(ctrl);
		return 0;
	}
	if (FUNC1(argv[0]) != 0) {
		FUNC2("Could not connect to interface '%s' - re-trying\n",
			ctrl_ifname);
	}
	return 0;
}
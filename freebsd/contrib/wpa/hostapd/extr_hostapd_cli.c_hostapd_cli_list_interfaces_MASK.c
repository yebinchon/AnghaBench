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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* ctrl_iface_dir ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct wpa_ctrl *ctrl)
{
	struct dirent *dent;
	DIR *dir;

	dir = FUNC1(ctrl_iface_dir);
	if (dir == NULL) {
		FUNC2("Control interface directory '%s' could not be "
		       "openned.\n", ctrl_iface_dir);
		return;
	}

	FUNC2("Available interfaces:\n");
	while ((dent = FUNC3(dir))) {
		if (FUNC4(dent->d_name, ".") == 0 ||
		    FUNC4(dent->d_name, "..") == 0)
			continue;
		FUNC2("%s\n", dent->d_name);
	}
	FUNC0(dir);
}
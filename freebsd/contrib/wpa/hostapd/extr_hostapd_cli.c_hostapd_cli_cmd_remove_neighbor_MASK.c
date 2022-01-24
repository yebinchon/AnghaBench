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
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct wpa_ctrl*,char*) ; 

__attribute__((used)) static int FUNC4(struct wpa_ctrl *ctrl, int argc,
					   char *argv[])
{
	char cmd[400];
	int res;

	if (argc != 2) {
		FUNC2("Invalid remove_neighbor command: needs 2 arguments\n");
		return -1;
	}

	res = FUNC0(cmd, sizeof(cmd), "REMOVE_NEIGHBOR %s %s",
			  argv[0], argv[1]);
	if (FUNC1(sizeof(cmd), res)) {
		FUNC2("Too long REMOVE_NEIGHBOR command.\n");
		return -1;
	}
	return FUNC3(ctrl, cmd);
}
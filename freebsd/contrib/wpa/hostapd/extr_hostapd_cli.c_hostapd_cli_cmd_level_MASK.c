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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int FUNC2 (struct wpa_ctrl*,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
	char cmd[256];
	if (argc != 1) {
		FUNC0("Invalid LEVEL command: needs one argument (debug "
		       "level)\n");
		return 0;
	}
	FUNC1(cmd, sizeof(cmd), "LEVEL %s", argv[0]);
	return FUNC2(ctrl, cmd);
}
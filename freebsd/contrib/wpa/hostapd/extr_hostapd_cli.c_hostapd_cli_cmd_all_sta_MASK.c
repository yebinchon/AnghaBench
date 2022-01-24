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
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 scalar_t__ FUNC1 (struct wpa_ctrl*,char*,char*,int,int) ; 

__attribute__((used)) static int FUNC2(struct wpa_ctrl *ctrl, int argc,
				   char *argv[])
{
	char addr[32], cmd[64];

	if (FUNC1(ctrl, "STA-FIRST", addr, sizeof(addr), 1))
		return 0;
	do {
		FUNC0(cmd, sizeof(cmd), "STA-NEXT %s", addr);
	} while (FUNC1(ctrl, cmd, addr, sizeof(addr), 1) == 0);

	return -1;
}
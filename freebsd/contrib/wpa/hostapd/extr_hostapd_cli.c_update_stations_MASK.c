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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interactive ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  stations ; 
 scalar_t__ FUNC4 (struct wpa_ctrl*,char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wpa_ctrl *ctrl)
{
	char addr[32], cmd[64];

	if (!ctrl || !interactive)
		return;

	FUNC1(&stations);

	if (FUNC4(ctrl, "STA-FIRST", addr, sizeof(addr), 0))
		return;
	do {
		if (FUNC3(addr, "") != 0)
			FUNC0(&stations, addr);
		FUNC2(cmd, sizeof(cmd), "STA-NEXT %s", addr);
	} while (FUNC4(ctrl, cmd, addr, sizeof(addr), 0) == 0);
}
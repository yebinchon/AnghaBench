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

/* Variables and functions */
 int /*<<< orphan*/ * ctrl_conn ; 
 scalar_t__ hostapd_cli_attached ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (ctrl_conn == NULL)
		return;

	FUNC0(ctrl_conn);
	if (hostapd_cli_attached) {
		FUNC2(ctrl_conn);
		hostapd_cli_attached = 0;
	}
	FUNC1(ctrl_conn);
	ctrl_conn = NULL;
}
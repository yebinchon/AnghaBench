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
 int /*<<< orphan*/  IAC ; 
 int /*<<< orphan*/  LFLOW_OFF ; 
 int /*<<< orphan*/  LFLOW_ON ; 
 int /*<<< orphan*/  LFLOW_RESTART_ANY ; 
 int /*<<< orphan*/  LFLOW_RESTART_XON ; 
 int /*<<< orphan*/  SB ; 
 int /*<<< orphan*/  SE ; 
 int /*<<< orphan*/  TELOPT_LFLOW ; 
 scalar_t__ flowmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ restartany ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

void
FUNC4(void)
{
	if (FUNC0(TELOPT_LFLOW)) {
		if (FUNC2() != flowmode) {
			flowmode = FUNC2();
			FUNC1("%c%c%c%c%c%c",
					IAC, SB, TELOPT_LFLOW,
					flowmode ? LFLOW_ON : LFLOW_OFF,
					IAC, SE);
		}
		if (FUNC3() != restartany) {
			restartany = FUNC3();
			FUNC1("%c%c%c%c%c%c",
					IAC, SB, TELOPT_LFLOW,
					restartany ? LFLOW_RESTART_ANY
						   : LFLOW_RESTART_XON,
					IAC, SE);
		}
	}
}
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
struct dbreg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PC_DBREG_CMD_LOAD 128 
 int /*<<< orphan*/  PC_DBREG_CMD_NONE ; 
 int /*<<< orphan*/  dbreg ; 
 int /*<<< orphan*/  dbreg_cmd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dbreg*) ; 

void
FUNC4(void)
{
	struct dbreg *d;

	switch (FUNC0(dbreg_cmd)) {
	case PC_DBREG_CMD_LOAD:
		d = (struct dbreg *)FUNC1(dbreg);
		FUNC3(NULL, d);
		FUNC2(dbreg_cmd, PC_DBREG_CMD_NONE);
		break;
	}
}
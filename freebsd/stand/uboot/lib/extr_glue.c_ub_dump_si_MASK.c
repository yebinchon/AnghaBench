#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sys_info {int clk_bus; int clk_cpu; int mr_no; TYPE_1__* mr; int /*<<< orphan*/  bar; } ;
struct TYPE_2__ {scalar_t__ flags; int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (scalar_t__) ; 

void
FUNC2(struct sys_info *si)
{
	int i;

	FUNC0("sys info:\n");
	FUNC0("  clkbus\t= %ld MHz\n", si->clk_bus / 1000 / 1000);
	FUNC0("  clkcpu\t= %ld MHz\n", si->clk_cpu / 1000 / 1000);
	FUNC0("  bar\t\t= 0x%08lx\n", si->bar);

	FUNC0("---\n");
	for (i = 0; i < si->mr_no; i++) {
		if (si->mr[i].flags == 0)
			break;

		FUNC0("  start\t= 0x%08lx\n", si->mr[i].start);
		FUNC0("  size\t= 0x%08lx\n", si->mr[i].size);
		FUNC0("  type\t= %s\n", FUNC1(si->mr[i].flags));
		FUNC0("---\n");
	}
}
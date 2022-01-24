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
struct nvme_controller_data {int npss; int /*<<< orphan*/ * power_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct nvme_controller_data *cdata)
{
	int i;

	FUNC1("\nPower States Supported: %d\n\n", cdata->npss + 1);
	FUNC1(" #   Max pwr  Enter Lat  Exit Lat RT RL WT WL Idle Pwr  Act Pwr Workloadd\n");
	FUNC1("--  --------  --------- --------- -- -- -- -- -------- -------- --\n");
	for (i = 0; i <= cdata->npss; i++)
		FUNC0(i, &cdata->power_state[i]);
}
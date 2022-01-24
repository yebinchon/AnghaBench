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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, int state)
{
	device_t child;
	device_t *devlist;
	int dstate, i, numdevs;

	if (FUNC2(dev, &devlist, &numdevs) != 0)
		return;

	/*
	 * Retrieve and set D-state for the sleep state if _SxD is present.
	 * Skip children who aren't attached since they are handled separately.
	 */
	for (i = 0; i < numdevs; i++) {
		child = devlist[i];
		dstate = state;
		if (FUNC3(child) &&
		    FUNC0(dev, child, &dstate) == 0)
			FUNC1(child, dstate);
	}
	FUNC4(devlist, M_TEMP);
}
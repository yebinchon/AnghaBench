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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtp ; 

void
FUNC5(unsigned long cpufreq, unsigned long busfreq)
{
	int lo, o = 0, o2, maxo = 0, depth;
	const uint32_t zero = 0;

	/* We want to modify every subnode of /cpus */
	o = FUNC3(fdtp, "/cpus");
	if (o < 0)
		return;

	/* maxo should contain offset of node next to /cpus */
	depth = 0;
	maxo = o;
	while (depth != -1)
		maxo = FUNC1(fdtp, maxo, &depth);

	/* Find CPU frequency properties */
	o = FUNC2(fdtp, o, "clock-frequency",
	    &zero, sizeof(uint32_t));

	o2 = FUNC2(fdtp, o, "bus-frequency", &zero,
	    sizeof(uint32_t));

	lo = FUNC0(o, o2);

	while (o != -FDT_ERR_NOTFOUND && o2 != -FDT_ERR_NOTFOUND) {

		o = FUNC2(fdtp, lo,
		    "clock-frequency", &zero, sizeof(uint32_t));

		o2 = FUNC2(fdtp, lo, "bus-frequency",
		    &zero, sizeof(uint32_t));

		/* We're only interested in /cpus subnode(s) */
		if (lo > maxo)
			break;

		FUNC4(fdtp, lo, "clock-frequency",
		    (uint32_t)cpufreq);

		FUNC4(fdtp, lo, "bus-frequency",
		    (uint32_t)busfreq);

		lo = FUNC0(o, o2);
	}
}
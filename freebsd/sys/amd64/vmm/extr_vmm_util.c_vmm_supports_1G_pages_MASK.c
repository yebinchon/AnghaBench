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
 int cpu_exthigh ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int*) ; 

bool
FUNC1(void)
{
	unsigned int regs[4];

	/*
	 * CPUID.80000001:EDX[bit 26] = 1 indicates support for 1GB pages
	 *
	 * Both Intel and AMD support this bit.
	 */
	if (cpu_exthigh >= 0x80000001) {
		FUNC0(0x80000001, regs);
		if (regs[3] & (1 << 26))
			return (true);
	}
	return (false);
}
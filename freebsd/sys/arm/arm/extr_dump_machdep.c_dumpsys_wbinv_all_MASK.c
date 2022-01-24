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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{

	/*
	 * Make sure we write coherent data.  Note that in the SMP case this
	 * only operates on the L1 cache of the current CPU, but all other CPUs
	 * have already been stopped, and their flush/invalidate was done as
	 * part of stopping.
	 */
	FUNC0();
#ifdef __XSCALE__
	xscale_cache_clean_minidata();
#endif
}
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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int DCZID_DZP ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int dcache_line_size ; 
 int dczva_line_size ; 
 int icache_line_size ; 
 int /*<<< orphan*/  idcache_line_size ; 
 int /*<<< orphan*/  pagezero ; 
 int /*<<< orphan*/  pagezero_cache ; 

__attribute__((used)) static void
FUNC5(void)
{
	int dcache_line_shift, icache_line_shift, dczva_line_shift;
	uint32_t ctr_el0;
	uint32_t dczid_el0;

	ctr_el0 = FUNC4(ctr_el0);

	/* Read the log2 words in each D cache line */
	dcache_line_shift = FUNC0(ctr_el0);
	/* Get the D cache line size */
	dcache_line_size = sizeof(int) << dcache_line_shift;

	/* And the same for the I cache */
	icache_line_shift = FUNC1(ctr_el0);
	icache_line_size = sizeof(int) << icache_line_shift;

	idcache_line_size = FUNC3(dcache_line_size, icache_line_size);

	dczid_el0 = FUNC4(dczid_el0);

	/* Check if dc zva is not prohibited */
	if (dczid_el0 & DCZID_DZP)
		dczva_line_size = 0;
	else {
		/* Same as with above calculations */
		dczva_line_shift = FUNC2(dczid_el0);
		dczva_line_size = sizeof(int) << dczva_line_shift;

		/* Change pagezero function */
		pagezero = pagezero_cache;
	}
}
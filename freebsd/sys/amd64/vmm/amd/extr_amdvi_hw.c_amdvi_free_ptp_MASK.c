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
typedef  int uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int AMDVI_PT_MASK ; 
 int AMDVI_PT_PRESENT ; 
 int /*<<< orphan*/  M_AMDVI ; 
 int NPTEPG ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(uint64_t *ptp, int level)
{
	int i;

	if (level < 1)
		return;

	for (i = 0; i < NPTEPG ; i++) {
		if ((ptp[i] & AMDVI_PT_PRESENT) == 0)
			continue;
		/* XXX: Add super-page or PTE mapping > 4KB. */
#ifdef notyet
		/* Super-page mapping. */
		if (AMDVI_PD_SUPER(ptp[i]))
			continue;
#endif

		FUNC3((uint64_t *)FUNC1(ptp[i]
		    & AMDVI_PT_MASK), level - 1);

	}

	FUNC2(ptp, M_AMDVI);
}
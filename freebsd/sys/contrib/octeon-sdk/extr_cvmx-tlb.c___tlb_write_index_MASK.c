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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(uint32_t tlbi,
        			    uint64_t hi, uint64_t lo0,
				    uint64_t lo1, uint64_t pagemask)
{

    if (tlbi >= (uint32_t)FUNC6()) {
        return -1;
    }

#ifdef DEBUG
    cvmx_dprintf("cvmx-tlb-dbg: "
	    "write TLB %d: hi %lx, lo0 %lx, lo1 %lx, pagemask %lx \n",
		tlbi, hi, lo0, lo1, pagemask);
#endif

    FUNC4(tlbi);
    FUNC0(hi);
    FUNC1(lo0);
    FUNC2(lo1);
    FUNC3(pagemask);
    FUNC5();

    return 0;
}
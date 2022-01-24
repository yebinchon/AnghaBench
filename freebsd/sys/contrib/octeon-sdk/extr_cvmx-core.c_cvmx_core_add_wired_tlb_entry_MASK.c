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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  cvmx_tlb_pagemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_EHB ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  CVMX_TLBWI ; 
 scalar_t__ FUNC7 () ; 

int FUNC8(uint64_t hi, uint64_t lo0, uint64_t lo1, cvmx_tlb_pagemask_t page_mask)
{
    uint32_t index;

    FUNC0(index);
    if (index >= (unsigned int)FUNC7())
    {
        return(-1);
    }
    FUNC1(hi);
    FUNC2(lo0);
    FUNC3(lo1);
    FUNC4(page_mask);
    FUNC5(index);
    FUNC6(index + 1);
    CVMX_EHB;
    CVMX_TLBWI;
    CVMX_EHB;
    return(index);
}
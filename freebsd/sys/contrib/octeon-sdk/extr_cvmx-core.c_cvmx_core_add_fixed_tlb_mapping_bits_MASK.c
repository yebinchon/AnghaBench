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
typedef  int cvmx_tlb_pagemask_t ;

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long) ; 

int FUNC2(uint64_t vaddr, uint64_t page0_addr, uint64_t page1_addr, cvmx_tlb_pagemask_t page_mask)
{

    if ((vaddr & (page_mask | 0x7ff))
        || ((page0_addr & ~0x7ULL) & ((page_mask | 0x7ff) >> 1))
        || ((page1_addr & ~0x7ULL) & ((page_mask | 0x7ff) >> 1)))
    {
        FUNC1("Error adding tlb mapping: invalid address alignment at vaddr: 0x%llx\n", (unsigned long long)vaddr);
        return(-1);
    }


    return(FUNC0(vaddr,
                                         (page0_addr >> 6) | (page0_addr & 0x7),
                                         (page1_addr >> 6) | (page1_addr & 0x7),
                                         page_mask));

}
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
typedef  int /*<<< orphan*/  cvmx_tlb_pagemask_t ;

/* Variables and functions */
 int TLB_DIRTY ; 
 int TLB_GLOBAL ; 
 int TLB_VALID ; 
 int FUNC0 (int,int,int,int /*<<< orphan*/ ) ; 

int FUNC1(uint64_t vaddr, uint64_t page0_addr, uint64_t page1_addr, cvmx_tlb_pagemask_t page_mask)
{

    return(FUNC0(vaddr, page0_addr | TLB_DIRTY | TLB_VALID | TLB_GLOBAL, page1_addr | TLB_DIRTY | TLB_VALID | TLB_GLOBAL, page_mask));

}
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
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 

void FUNC3(int index, uint64_t vaddr, uint64_t paddr,
			uint64_t size, uint64_t tlb_flags) {
	uint64_t lo0, lo1, hi, pagemask;

	if ( FUNC0(size) ) {
		if ( (FUNC1(size) & 1 ) == 0) {
			/* size is not power of 4,  we only need to map
  			   one page, figure out even or odd page to map */
			if ((vaddr >> FUNC1(size) & 1))  {
				lo0 =  0;
				lo1 =  ((paddr >> 12) << 6) | tlb_flags;
				hi =   ((vaddr - size) >> 12) << 12;
			}else {
				lo0 =  ((paddr >> 12) << 6) | tlb_flags;
				lo1 =  0;
				hi =   ((vaddr) >> 12) << 12;
			}
			pagemask = (size - 1) & (~1<<11);
		}else {
			lo0 =  ((paddr >> 12)<< 6) | tlb_flags;
			lo1 =  (((paddr + size /2) >> 12) << 6) | tlb_flags;
			hi =   ((vaddr) >> 12) << 12;
			pagemask = ((size/2) -1) & (~1<<11);
		}


        	FUNC2(index, hi, lo0, lo1, pagemask);

	}
}
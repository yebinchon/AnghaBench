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
typedef  scalar_t__ vm_page_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 scalar_t__ PMAP_HAS_DMAP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

void
FUNC4(vm_page_t page, unsigned int order)
{
	if (PMAP_HAS_DMAP) {
		unsigned long npages = 1UL << order;
		unsigned long x;

		for (x = 0; x != npages; x++) {
			vm_page_t pgo = page + x;

			if (FUNC3(pgo))
				FUNC2(pgo);
		}
	} else {
		vm_offset_t vaddr;

		vaddr = (vm_offset_t)FUNC1(page);

		FUNC0(vaddr, order);
	}
}
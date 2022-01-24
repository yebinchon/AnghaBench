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
typedef  int vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (scalar_t__) ; 
 int VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4(pmap_t pmap, vm_offset_t va, vm_size_t sz)
{

	if (va >= VM_MIN_KERNEL_ADDRESS) {
		FUNC1(va, sz);
	} else {
		u_int len, offset;
		vm_paddr_t pa;

		/* Find the length of data in this page to flush */
		offset = va & PAGE_MASK;
		len = FUNC2(PAGE_SIZE - offset, sz);

		while (sz != 0) {
			/* Extract the physical address & find it in the DMAP */
			pa = FUNC3(pmap, va);
			if (pa != 0)
				FUNC1(FUNC0(pa), len);

			/* Move to the next page */
			sz -= len;
			va += len;
			/* Set the length for the next iteration */
			len = FUNC2(PAGE_SIZE, sz);
		}
	}
}
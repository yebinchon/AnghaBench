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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  pt2_entry_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(vm_paddr_t pa, vm_offset_t va, u_int num)
{
	u_int i;
	pt2_entry_t *pte2p;

	/* Map all the pages. */
	for (i = 0; i < num; i++) {
		pte2p = FUNC1(va);
		FUNC2(pte2p, FUNC0(pa));
		va += PAGE_SIZE;
		pa += PAGE_SIZE;
	}
}
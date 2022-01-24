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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  pt2_entry_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ virtual_avail ; 

vm_offset_t
FUNC2(u_int num)
{
	u_int i;
	vm_offset_t start, va;
	pt2_entry_t *pte2p;

	/* Allocate virtual space. */
	start = va = virtual_avail;
	virtual_avail += num * PAGE_SIZE;

	/* Zero the mapping. */
	for (i = 0; i < num; i++) {
		pte2p = FUNC0(va);
		FUNC1(pte2p, 0);
		va += PAGE_SIZE;
	}

	return (start);
}
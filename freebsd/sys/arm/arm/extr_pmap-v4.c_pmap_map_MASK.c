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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 

vm_offset_t
FUNC3(vm_offset_t *virt, vm_offset_t start, vm_offset_t end, int prot)
{
	vm_offset_t sva = *virt;
	vm_offset_t va = sva;

	FUNC0(1, FUNC2("pmap_map: virt = %08x, start = %08x, end = %08x, "
	    "prot = %d\n", (uint32_t) *virt, (uint32_t) start, (uint32_t) end,
	    prot));

	while (start < end) {
		FUNC1(va, start);
		va += PAGE_SIZE;
		start += PAGE_SIZE;
	}
	*virt = va;
	return (sva);
}
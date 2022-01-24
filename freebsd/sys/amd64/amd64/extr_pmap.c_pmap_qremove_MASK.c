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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(vm_offset_t sva, int count)
{
	vm_offset_t va;

	va = sva;
	while (count-- > 0) {
		FUNC0(va >= VM_MIN_KERNEL_ADDRESS, ("usermode va %lx", va));
		FUNC2(va);
		va += PAGE_SIZE;
	}
	FUNC1(kernel_pmap, sva, va);
}
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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ dmaplimit ; 
 int /*<<< orphan*/  kernel_arena ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(vm_page_t page[], vm_offset_t vaddr[], int count,
    boolean_t can_fault)
{
	vm_paddr_t paddr;
	int i;

	if (!can_fault)
		FUNC2();
	for (i = 0; i < count; i++) {
		paddr = FUNC0(page[i]);
		if (paddr >= dmaplimit) {
			if (can_fault)
				FUNC1(vaddr[i], 1);
			FUNC3(kernel_arena, vaddr[i], PAGE_SIZE);
		}
	}
}
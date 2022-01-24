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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(vm_page_t page[], vm_offset_t vaddr[], int count,
    boolean_t can_fault)
{
	vm_paddr_t paddr;
	int i;

	if (!can_fault)
		FUNC3();
	for (i = 0; i < count; i++) {
		paddr = FUNC1(page[i]);
		if (!FUNC0(paddr)) {
			FUNC2("ARM64TODO: pmap_unmap_io_transient: Unmap data");
		}
	}
}
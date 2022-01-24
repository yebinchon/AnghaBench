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
typedef  int /*<<< orphan*/  u_long ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int* FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  pti ; 
 int /*<<< orphan*/  pti_obj ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

void
FUNC10(vm_offset_t sva, vm_offset_t eva)
{
	pt_entry_t *pte;
	vm_offset_t va;

	if (!pti)
		return;
	sva = FUNC8(sva, PAGE_SIZE);
	FUNC1(sva > VM_MAXUSER_ADDRESS);
	eva = FUNC9(eva, PAGE_SIZE);
	FUNC1(sva < eva);
	FUNC2(pti_obj);
	for (va = sva; va < eva; va += PAGE_SIZE) {
		pte = FUNC5(va, NULL);
		FUNC0((*pte & X86_PG_V) != 0,
		    ("invalid pte va %#lx pte %#lx pt %#lx", va,
		    (u_long)pte, *pte));
		FUNC7(pte);
		FUNC6(pte, va);
	}
	FUNC4(kernel_pmap, sva, eva);
	FUNC3(pti_obj);
}
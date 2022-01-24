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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L1_OFFSET ; 
 scalar_t__ L1_SIZE ; 
 int L1_TABLE ; 
 size_t Ln_ENTRIES ; 
 int Ln_TABLE_MASK ; 
 int PAGE_SIZE ; 
 int VM_MAX_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vm_offset_t
FUNC5(vm_offset_t l1pt, vm_offset_t va, vm_offset_t l2_start)
{
	vm_offset_t l2pt;
	vm_paddr_t pa;
	pd_entry_t *l1;
	u_int l1_slot;

	FUNC0((va & L1_OFFSET) == 0, ("Invalid virtual address"));

	l1 = (pd_entry_t *)l1pt;
	l1_slot = FUNC3(va);
	l2pt = l2_start;

	for (; va < VM_MAX_KERNEL_ADDRESS; l1_slot++, va += L1_SIZE) {
		FUNC0(l1_slot < Ln_ENTRIES, ("Invalid L1 index"));

		pa = FUNC2(l1pt, l2pt);
		FUNC4(&l1[l1_slot],
		    (pa & ~Ln_TABLE_MASK) | L1_TABLE);
		l2pt += PAGE_SIZE;
	}

	/* Clean the L2 page table */
	FUNC1((void *)l2_start, 0, l2pt - l2_start);

	return l2pt;
}
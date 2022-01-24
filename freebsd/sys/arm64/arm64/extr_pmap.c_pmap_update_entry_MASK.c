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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DESCR_VALID ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(pmap_t pmap, pd_entry_t *pte, pd_entry_t newpte,
    vm_offset_t va, vm_size_t size)
{
	register_t intr;

	FUNC0(pmap, MA_OWNED);

	/*
	 * Ensure we don't get switched out with the page table in an
	 * inconsistent state. We also need to ensure no interrupts fire
	 * as they may make use of an address we are about to invalidate.
	 */
	intr = FUNC2();

	/*
	 * Clear the old mapping's valid bit, but leave the rest of the entry
	 * unchanged, so that a lockless, concurrent pmap_kextract() can still
	 * lookup the physical address.
	 */
	FUNC4(pte, ATTR_DESCR_VALID);
	FUNC5(pmap, va, va + size);

	/* Create the new mapping */
	FUNC6(pte, newpte);
	FUNC1(ishst);

	FUNC3(intr);
}
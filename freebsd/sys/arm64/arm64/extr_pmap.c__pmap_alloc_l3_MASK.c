#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
struct rwlock {int dummy; } ;
typedef  TYPE_2__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_16__ {int* pm_l0; } ;
struct TYPE_15__ {int flags; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int ATTR_MASK ; 
 size_t L0_ENTRIES_SHIFT ; 
 int L0_TABLE ; 
 int L1_TABLE ; 
 int L2_TABLE ; 
 size_t Ln_ADDR_MASK ; 
 size_t Ln_ENTRIES_SHIFT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t NUL1E ; 
 size_t NUL2E ; 
 int PG_ZERO ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rwlock**) ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 int FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_page_t
FUNC16(pmap_t pmap, vm_pindex_t ptepindex, struct rwlock **lockp)
{
	vm_page_t m, l1pg, l2pg;

	FUNC3(pmap, MA_OWNED);

	/*
	 * Allocate a page table page.
	 */
	if ((m = FUNC12(NULL, ptepindex, VM_ALLOC_NOOBJ |
	    VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == NULL) {
		if (lockp != NULL) {
			FUNC5(lockp);
			FUNC4(pmap);
			FUNC15(NULL);
			FUNC2(pmap);
		}

		/*
		 * Indicate the need to retry.  While waiting, the page table
		 * page may have been allocated.
		 */
		return (NULL);
	}
	if ((m->flags & PG_ZERO) == 0)
		FUNC11(m);

	/*
	 * Because of AArch64's weak memory consistency model, we must have a
	 * barrier here to ensure that the stores for zeroing "m", whether by
	 * pmap_zero_page() or an earlier function, are visible before adding
	 * "m" to the page table.  Otherwise, a page table walk by another
	 * processor's MMU could see the mapping to "m" and a stale, non-zero
	 * PTE within "m".
	 */
	FUNC7(ishst);

	/*
	 * Map the pagetable page into the process address space, if
	 * it isn't already there.
	 */

	if (ptepindex >= (NUL2E + NUL1E)) {
		pd_entry_t *l0;
		vm_pindex_t l0index;

		l0index = ptepindex - (NUL2E + NUL1E);
		l0 = &pmap->pm_l0[l0index];
		FUNC10(l0, FUNC6(m) | L0_TABLE);
	} else if (ptepindex >= NUL2E) {
		vm_pindex_t l0index, l1index;
		pd_entry_t *l0, *l1;
		pd_entry_t tl0;

		l1index = ptepindex - NUL2E;
		l0index = l1index >> L0_ENTRIES_SHIFT;

		l0 = &pmap->pm_l0[l0index];
		tl0 = FUNC8(l0);
		if (tl0 == 0) {
			/* recurse for allocating page dir */
			if (FUNC16(pmap, NUL2E + NUL1E + l0index,
			    lockp) == NULL) {
				FUNC14(m);
				FUNC13(m);
				return (NULL);
			}
		} else {
			l1pg = FUNC1(tl0 & ~ATTR_MASK);
			l1pg->ref_count++;
		}

		l1 = (pd_entry_t *)FUNC0(FUNC8(l0) & ~ATTR_MASK);
		l1 = &l1[ptepindex & Ln_ADDR_MASK];
		FUNC10(l1, FUNC6(m) | L1_TABLE);
	} else {
		vm_pindex_t l0index, l1index;
		pd_entry_t *l0, *l1, *l2;
		pd_entry_t tl0, tl1;

		l1index = ptepindex >> Ln_ENTRIES_SHIFT;
		l0index = l1index >> L0_ENTRIES_SHIFT;

		l0 = &pmap->pm_l0[l0index];
		tl0 = FUNC8(l0);
		if (tl0 == 0) {
			/* recurse for allocating page dir */
			if (FUNC16(pmap, NUL2E + l1index,
			    lockp) == NULL) {
				FUNC14(m);
				FUNC13(m);
				return (NULL);
			}
			tl0 = FUNC8(l0);
			l1 = (pd_entry_t *)FUNC0(tl0 & ~ATTR_MASK);
			l1 = &l1[l1index & Ln_ADDR_MASK];
		} else {
			l1 = (pd_entry_t *)FUNC0(tl0 & ~ATTR_MASK);
			l1 = &l1[l1index & Ln_ADDR_MASK];
			tl1 = FUNC8(l1);
			if (tl1 == 0) {
				/* recurse for allocating page dir */
				if (FUNC16(pmap, NUL2E + l1index,
				    lockp) == NULL) {
					FUNC14(m);
					FUNC13(m);
					return (NULL);
				}
			} else {
				l2pg = FUNC1(tl1 & ~ATTR_MASK);
				l2pg->ref_count++;
			}
		}

		l2 = (pd_entry_t *)FUNC0(FUNC8(l1) & ~ATTR_MASK);
		l2 = &l2[ptepindex & Ln_ADDR_MASK];
		FUNC10(l2, FUNC6(m) | L2_TABLE);
	}

	FUNC9(pmap, 1);

	return (m);
}
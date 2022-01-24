#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_20__ {int* pm_pml4; int* pm_pml4u; scalar_t__ pm_ucr3; } ;
struct TYPE_19__ {int flags; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 unsigned long NPDEPGSHIFT ; 
 unsigned long NPDPEPGSHIFT ; 
 size_t NPML4EPGSHIFT ; 
 size_t NUPDE ; 
 size_t NUPDPE ; 
 size_t NUPML4E ; 
 int PG_FRAME ; 
 int PG_U ; 
 int PG_ZERO ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_NO_CR3 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct rwlock**) ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int FUNC7 (TYPE_1__*) ; 
 int pg_nx ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_page_t
FUNC18(pmap_t pmap, vm_pindex_t ptepindex, struct rwlock **lockp)
{
	vm_page_t m, pdppg, pdpg;
	pt_entry_t PG_A, PG_M, PG_RW, PG_V;

	FUNC4(pmap, MA_OWNED);

	PG_A = FUNC8(pmap);
	PG_M = FUNC9(pmap);
	PG_V = FUNC12(pmap);
	PG_RW = FUNC11(pmap);

	/*
	 * Allocate a page table page.
	 */
	if ((m = FUNC14(NULL, ptepindex, VM_ALLOC_NOOBJ |
	    VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == NULL) {
		if (lockp != NULL) {
			FUNC6(lockp);
			FUNC5(pmap);
			FUNC2();
			FUNC17(NULL);
			FUNC3(pmap);
		}

		/*
		 * Indicate the need to retry.  While waiting, the page table
		 * page may have been allocated.
		 */
		return (NULL);
	}
	if ((m->flags & PG_ZERO) == 0)
		FUNC13(m);

	/*
	 * Map the pagetable page into the process address space, if
	 * it isn't already there.
	 */

	if (ptepindex >= (NUPDE + NUPDPE)) {
		pml4_entry_t *pml4, *pml4u;
		vm_pindex_t pml4index;

		/* Wire up a new PDPE page */
		pml4index = ptepindex - (NUPDE + NUPDPE);
		pml4 = &pmap->pm_pml4[pml4index];
		*pml4 = FUNC7(m) | PG_U | PG_RW | PG_V | PG_A | PG_M;
		if (pmap->pm_pml4u != NULL && pml4index < NUPML4E) {
			/*
			 * PTI: Make all user-space mappings in the
			 * kernel-mode page table no-execute so that
			 * we detect any programming errors that leave
			 * the kernel-mode page table active on return
			 * to user space.
			 */
			if (pmap->pm_ucr3 != PMAP_NO_CR3)
				*pml4 |= pg_nx;

			pml4u = &pmap->pm_pml4u[pml4index];
			*pml4u = FUNC7(m) | PG_U | PG_RW | PG_V |
			    PG_A | PG_M;
		}

	} else if (ptepindex >= NUPDE) {
		vm_pindex_t pml4index;
		vm_pindex_t pdpindex;
		pml4_entry_t *pml4;
		pdp_entry_t *pdp;

		/* Wire up a new PDE page */
		pdpindex = ptepindex - NUPDE;
		pml4index = pdpindex >> NPML4EPGSHIFT;

		pml4 = &pmap->pm_pml4[pml4index];
		if ((*pml4 & PG_V) == 0) {
			/* Have to allocate a new pdp, recurse */
			if (FUNC18(pmap, NUPDE + NUPDPE + pml4index,
			    lockp) == NULL) {
				FUNC16(m);
				FUNC15(m);
				return (NULL);
			}
		} else {
			/* Add reference to pdp page */
			pdppg = FUNC1(*pml4 & PG_FRAME);
			pdppg->ref_count++;
		}
		pdp = (pdp_entry_t *)FUNC0(*pml4 & PG_FRAME);

		/* Now find the pdp page */
		pdp = &pdp[pdpindex & ((1ul << NPDPEPGSHIFT) - 1)];
		*pdp = FUNC7(m) | PG_U | PG_RW | PG_V | PG_A | PG_M;

	} else {
		vm_pindex_t pml4index;
		vm_pindex_t pdpindex;
		pml4_entry_t *pml4;
		pdp_entry_t *pdp;
		pd_entry_t *pd;

		/* Wire up a new PTE page */
		pdpindex = ptepindex >> NPDPEPGSHIFT;
		pml4index = pdpindex >> NPML4EPGSHIFT;

		/* First, find the pdp and check that its valid. */
		pml4 = &pmap->pm_pml4[pml4index];
		if ((*pml4 & PG_V) == 0) {
			/* Have to allocate a new pd, recurse */
			if (FUNC18(pmap, NUPDE + pdpindex,
			    lockp) == NULL) {
				FUNC16(m);
				FUNC15(m);
				return (NULL);
			}
			pdp = (pdp_entry_t *)FUNC0(*pml4 & PG_FRAME);
			pdp = &pdp[pdpindex & ((1ul << NPDPEPGSHIFT) - 1)];
		} else {
			pdp = (pdp_entry_t *)FUNC0(*pml4 & PG_FRAME);
			pdp = &pdp[pdpindex & ((1ul << NPDPEPGSHIFT) - 1)];
			if ((*pdp & PG_V) == 0) {
				/* Have to allocate a new pd, recurse */
				if (FUNC18(pmap, NUPDE + pdpindex,
				    lockp) == NULL) {
					FUNC16(m);
					FUNC15(m);
					return (NULL);
				}
			} else {
				/* Add reference to the pd page */
				pdpg = FUNC1(*pdp & PG_FRAME);
				pdpg->ref_count++;
			}
		}
		pd = (pd_entry_t *)FUNC0(*pdp & PG_FRAME);

		/* Now we know where the page directory page is */
		pd = &pd[ptepindex & ((1ul << NPDEPGSHIFT) - 1)];
		*pd = FUNC7(m) | PG_U | PG_RW | PG_V | PG_A | PG_M;
	}

	FUNC10(pmap, 1);

	return (m);
}
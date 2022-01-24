#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_14__ {scalar_t__ clean_sva; scalar_t__ clean_eva; } ;
struct TYPE_12__ {int /*<<< orphan*/  pat_mode; } ;
struct TYPE_13__ {int oflags; scalar_t__ pindex; TYPE_1__ md; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_U ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spglist*) ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int FUNC5 (TYPE_2__*) ; 
 int VM_PROT_EXECUTE ; 
 int VPO_UNMANAGED ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_8__ kmi ; 
 int pg_nx ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,struct rwlock**) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,struct spglist*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct spglist*,int) ; 
 int* FUNC19 (scalar_t__) ; 

__attribute__((used)) static vm_page_t
FUNC20(pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, vm_page_t mpte, struct rwlock **lockp)
{
	struct spglist free;
	pt_entry_t newpte, *pte, PG_V;

	FUNC0(va < kmi.clean_sva || va >= kmi.clean_eva ||
	    (m->oflags & VPO_UNMANAGED) != 0,
	    ("pmap_enter_quick_locked: managed mapping within the clean submap"));
	PG_V = FUNC16(pmap);
	FUNC3(pmap, MA_OWNED);

	/*
	 * In the case that a page table page is not
	 * resident, we are creating it here.
	 */
	if (va < VM_MAXUSER_ADDRESS) {
		vm_pindex_t ptepindex;
		pd_entry_t *ptepa;

		/*
		 * Calculate pagetable page index
		 */
		ptepindex = FUNC10(va);
		if (mpte && (mpte->pindex == ptepindex)) {
			mpte->ref_count++;
		} else {
			/*
			 * Get the page directory entry
			 */
			ptepa = FUNC9(pmap, va);

			/*
			 * If the page table page is mapped, we just increment
			 * the hold count, and activate it.  Otherwise, we
			 * attempt to allocate a page table page.  If this
			 * attempt fails, we don't retry.  Instead, we give up.
			 */
			if (ptepa && (*ptepa & PG_V) != 0) {
				if (*ptepa & PG_PS)
					return (NULL);
				mpte = FUNC2(*ptepa & PG_FRAME);
				mpte->ref_count++;
			} else {
				/*
				 * Pass NULL instead of the PV list lock
				 * pointer, because we don't intend to sleep.
				 */
				mpte = FUNC6(pmap, ptepindex, NULL);
				if (mpte == NULL)
					return (mpte);
			}
		}
		pte = (pt_entry_t *)FUNC1(FUNC5(mpte));
		pte = &pte[FUNC12(va)];
	} else {
		mpte = NULL;
		pte = FUNC19(va);
	}
	if (*pte) {
		if (mpte != NULL) {
			mpte->ref_count--;
			mpte = NULL;
		}
		return (mpte);
	}

	/*
	 * Enter on the PV list if part of our managed memory.
	 */
	if ((m->oflags & VPO_UNMANAGED) == 0 &&
	    !FUNC14(pmap, va, m, lockp)) {
		if (mpte != NULL) {
			FUNC4(&free);
			if (FUNC15(pmap, va, mpte, &free)) {
				/*
				 * Although "va" is not mapped, paging-
				 * structure caches could nonetheless have
				 * entries that refer to the freed page table
				 * pages.  Invalidate those entries.
				 */
				FUNC8(pmap, va);
				FUNC18(&free, true);
			}
			mpte = NULL;
		}
		return (mpte);
	}

	/*
	 * Increment counters
	 */
	FUNC13(pmap, 1);

	newpte = FUNC5(m) | PG_V |
	    FUNC7(pmap, m->md.pat_mode, 0);
	if ((m->oflags & VPO_UNMANAGED) == 0)
		newpte |= PG_MANAGED;
	if ((prot & VM_PROT_EXECUTE) == 0)
		newpte |= pg_nx;
	if (va < VM_MAXUSER_ADDRESS)
		newpte |= PG_U | FUNC11(pmap, va);
	FUNC17(pte, newpte);
	return (mpte);
}
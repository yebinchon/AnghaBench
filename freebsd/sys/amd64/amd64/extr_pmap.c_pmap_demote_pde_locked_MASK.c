#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {scalar_t__ valid; scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ DMAP_MAX_ADDRESS ; 
 scalar_t__ DMAP_MIN_ADDRESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NPTEPG ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_PS_FRAME ; 
 int PG_PTE_PROMOTE ; 
 int PG_U ; 
 int PG_W ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int*,int,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmap_pde_demotions ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,int,struct rwlock**) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__,struct rwlock**) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ workaround_erratum383 ; 

__attribute__((used)) static boolean_t
FUNC27(pmap_t pmap, pd_entry_t *pde, vm_offset_t va,
    struct rwlock **lockp)
{
	pd_entry_t newpde, oldpde;
	pt_entry_t *firstpte, newpte;
	pt_entry_t PG_A, PG_G, PG_M, PG_PKU_MASK, PG_RW, PG_V;
	vm_paddr_t mptepa;
	vm_page_t mpte;
	int PG_PTE_CACHE;
	bool in_kernel;

	PG_A = FUNC7(pmap);
	PG_G = FUNC12(pmap);
	PG_M = FUNC14(pmap);
	PG_RW = FUNC20(pmap);
	PG_V = FUNC23(pmap);
	PG_PTE_CACHE = FUNC8(pmap, 0);
	PG_PKU_MASK = FUNC16(pmap);

	FUNC3(pmap, MA_OWNED);
	in_kernel = va >= VM_MAXUSER_ADDRESS;
	oldpde = *pde;
	FUNC1((oldpde & (PG_PS | PG_V)) == (PG_PS | PG_V),
	    ("pmap_demote_pde: oldpde is missing PG_PS and/or PG_V"));

	/*
	 * Invalidate the 2MB page mapping and return "failure" if the
	 * mapping was never accessed.
	 */
	if ((oldpde & PG_A) == 0) {
		FUNC1((oldpde & PG_W) == 0,
		    ("pmap_demote_pde: a wired mapping is missing PG_A"));
		FUNC9(pmap, va, pde, oldpde, lockp);
		return (FALSE);
	}

	mpte = FUNC18(pmap, va);
	if (mpte == NULL) {
		FUNC1((oldpde & PG_W) == 0,
		    ("pmap_demote_pde: page table page for a wired mapping"
		    " is missing"));

		/*
		 * If the page table page is missing and the mapping
		 * is for a kernel address, the mapping must belong to
		 * the direct map.  Page table pages are preallocated
		 * for every other part of the kernel address space,
		 * so the direct map region is the only part of the
		 * kernel address space that must be handled here.
		 */
		FUNC1(!in_kernel || (va >= DMAP_MIN_ADDRESS &&
		    va < DMAP_MAX_ADDRESS),
		    ("pmap_demote_pde: No saved mpte for va %#lx", va));

		/*
		 * If the 2MB page mapping belongs to the direct map
		 * region of the kernel's address space, then the page
		 * allocation request specifies the highest possible
		 * priority (VM_ALLOC_INTERRUPT).  Otherwise, the
		 * priority is normal.
		 */
		mpte = FUNC25(NULL, FUNC15(va),
		    (in_kernel ? VM_ALLOC_INTERRUPT : VM_ALLOC_NORMAL) |
		    VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);

		/*
		 * If the allocation of the new page table page fails,
		 * invalidate the 2MB page mapping and return "failure".
		 */
		if (mpte == NULL) {
			FUNC9(pmap, va, pde, oldpde, lockp);
			return (FALSE);
		}

		if (!in_kernel) {
			mpte->ref_count = NPTEPG;
			FUNC19(pmap, 1);
		}
	}
	mptepa = FUNC4(mpte);
	firstpte = (pt_entry_t *)FUNC2(mptepa);
	newpde = mptepa | PG_M | PG_A | (oldpde & PG_U) | PG_RW | PG_V;
	FUNC1((oldpde & (PG_M | PG_RW)) != PG_RW,
	    ("pmap_demote_pde: oldpde is missing PG_M"));
	newpte = oldpde & ~PG_PS;
	newpte = FUNC21(pmap, newpte);

	/*
	 * If the page table page is not leftover from an earlier promotion,
	 * initialize it.
	 */
	if (mpte->valid == 0)
		FUNC11(firstpte, newpte);

	FUNC10(firstpte, newpte);

	/*
	 * If the mapping has changed attributes, update the page table
	 * entries.
	 */
	if ((*firstpte & PG_PTE_PROMOTE) != (newpte & PG_PTE_PROMOTE))
		FUNC11(firstpte, newpte);

	/*
	 * The spare PV entries must be reserved prior to demoting the
	 * mapping, that is, prior to changing the PDE.  Otherwise, the state
	 * of the PDE and the PV lists will be inconsistent, which can result
	 * in reclaim_pv_chunk() attempting to remove a PV entry from the
	 * wrong PV list and pmap_pv_demote_pde() failing to find the expected
	 * PV entry for the 2MB page mapping that is being demoted.
	 */
	if ((oldpde & PG_MANAGED) != 0)
		FUNC24(pmap, NPTEPG - 1, lockp);

	/*
	 * Demote the mapping.  This pmap is locked.  The old PDE has
	 * PG_A set.  If the old PDE has PG_RW set, it also has PG_M
	 * set.  Thus, there is no danger of a race with another
	 * processor changing the setting of PG_A and/or PG_M between
	 * the read above and the store below. 
	 */
	if (workaround_erratum383)
		FUNC22(pmap, va, pde, newpde);
	else
		FUNC6(pde, newpde);

	/*
	 * Invalidate a stale recursive mapping of the page table page.
	 */
	if (in_kernel)
		FUNC13(pmap, (vm_offset_t)FUNC26(va));

	/*
	 * Demote the PV entry.
	 */
	if ((oldpde & PG_MANAGED) != 0)
		FUNC17(pmap, va, oldpde & PG_PS_FRAME, lockp);

	FUNC5(&pmap_pde_demotions, 1);
	FUNC0(KTR_PMAP, "pmap_demote_pde: success for va %#lx in pmap %p",
	    va, pmap);
	return (TRUE);
}
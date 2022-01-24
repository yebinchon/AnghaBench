#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int u_int ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_33__ {size_t wired_count; } ;
struct TYPE_35__ {scalar_t__ pm_type; TYPE_1__ pm_stats; } ;
struct TYPE_34__ {int ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KERN_FAILURE ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t NBPDR ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_W ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int) ; 
 int PMAP_ENTER_NOREPLACE ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PT_X86 ; 
 int /*<<< orphan*/  FUNC5 (struct spglist*) ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int X86_PG_PKU_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,scalar_t__,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,scalar_t__,int) ; 
 int FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int) ; 
 size_t FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_pde_mappings ; 
 int FUNC22 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,scalar_t__,int,int,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int*,scalar_t__,struct spglist*,struct rwlock**) ; 
 scalar_t__ FUNC26 (TYPE_3__*,scalar_t__,scalar_t__,int*,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,size_t) ; 
 int FUNC28 (TYPE_3__*) ; 
 scalar_t__ FUNC29 (TYPE_3__*,scalar_t__,TYPE_2__*,struct spglist*) ; 
 int FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct spglist*,int) ; 

__attribute__((used)) static int
FUNC33(pmap_t pmap, vm_offset_t va, pd_entry_t newpde, u_int flags,
    vm_page_t m, struct rwlock **lockp)
{
	struct spglist free;
	pd_entry_t oldpde, *pde;
	pt_entry_t PG_G, PG_RW, PG_V;
	vm_page_t mt, pdpg;

	FUNC1(pmap == kernel_pmap || (newpde & PG_W) == 0,
	    ("pmap_enter_pde: cannot create wired user mapping"));
	PG_G = FUNC14(pmap);
	PG_RW = FUNC28(pmap);
	FUNC1((newpde & (FUNC19(pmap) | PG_RW)) != PG_RW,
	    ("pmap_enter_pde: newpde is missing PG_M"));
	PG_V = FUNC30(pmap);
	FUNC4(pmap, MA_OWNED);

	if (!FUNC11(pmap, FUNC20(pmap,
	    newpde))) {
		FUNC0(KTR_PMAP, "pmap_enter_pde: 2m x blocked for va %#lx"
		    " in pmap %p", va, pmap);
		return (KERN_FAILURE);
	}
	if ((pdpg = FUNC10(pmap, va, (flags & PMAP_ENTER_NOSLEEP) != 0 ?
	    NULL : lockp)) == NULL) {
		FUNC0(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
		    " in pmap %p", va, pmap);
		return (KERN_RESOURCE_SHORTAGE);
	}

	/*
	 * If pkru is not same for the whole pde range, return failure
	 * and let vm_fault() cope.  Check after pde allocation, since
	 * it could sleep.
	 */
	if (!FUNC23(pmap, va, va + NBPDR)) {
		FUNC5(&free);
		if (FUNC29(pmap, va, pdpg, &free)) {
			FUNC17(pmap, va);
			FUNC32(&free, true);
		}
		return (KERN_FAILURE);
	}
	if (va < VM_MAXUSER_ADDRESS && pmap->pm_type == PT_X86) {
		newpde &= ~X86_PG_PKU_MASK;
		newpde |= FUNC22(pmap, va);
	}

	pde = (pd_entry_t *)FUNC2(FUNC6(pdpg));
	pde = &pde[FUNC21(va)];
	oldpde = *pde;
	if ((oldpde & PG_V) != 0) {
		FUNC1(pdpg->ref_count > 1,
		    ("pmap_enter_pde: pdpg's reference count is too low"));
		if ((flags & PMAP_ENTER_NOREPLACE) != 0) {
			pdpg->ref_count--;
			FUNC0(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
			    " in pmap %p", va, pmap);
			return (KERN_FAILURE);
		}
		/* Break the existing mapping(s). */
		FUNC5(&free);
		if ((oldpde & PG_PS) != 0) {
			/*
			 * The reference to the PD page that was acquired by
			 * pmap_allocpde() ensures that it won't be freed.
			 * However, if the PDE resulted from a promotion, then
			 * a reserved PT page could be freed.
			 */
			(void)FUNC25(pmap, pde, va, &free, lockp);
			if ((oldpde & PG_G) == 0)
				FUNC18(pmap, va, oldpde);
		} else {
			FUNC13();
			if (FUNC26(pmap, va, va + NBPDR, pde, &free,
			    lockp))
		               FUNC16(pmap);
			FUNC12();
		}
		FUNC32(&free, true);
		if (va >= VM_MAXUSER_ADDRESS) {
			/*
			 * Both pmap_remove_pde() and pmap_remove_ptes() will
			 * leave the kernel page table page zero filled.
			 */
			mt = FUNC3(*pde & PG_FRAME);
			if (FUNC15(pmap, mt, false))
				FUNC8("pmap_enter_pde: trie insert failed");
		} else
			FUNC1(*pde == 0, ("pmap_enter_pde: non-zero pde %p",
			    pde));
	}
	if ((newpde & PG_MANAGED) != 0) {
		/*
		 * Abort this mapping if its PV entry could not be created.
		 */
		if (!FUNC24(pmap, va, newpde, flags, lockp)) {
			FUNC5(&free);
			if (FUNC29(pmap, va, pdpg, &free)) {
				/*
				 * Although "va" is not mapped, paging-
				 * structure caches could nonetheless have
				 * entries that refer to the freed page table
				 * pages.  Invalidate those entries.
				 */
				FUNC17(pmap, va);
				FUNC32(&free, true);
			}
			FUNC0(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
			    " in pmap %p", va, pmap);
			return (KERN_RESOURCE_SHORTAGE);
		}
		if ((newpde & PG_RW) != 0) {
			for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
				FUNC31(mt, PGA_WRITEABLE);
		}
	}

	/*
	 * Increment counters.
	 */
	if ((newpde & PG_W) != 0)
		pmap->pm_stats.wired_count += NBPDR / PAGE_SIZE;
	FUNC27(pmap, NBPDR / PAGE_SIZE);

	/*
	 * Map the superpage.  (This is not a promoted mapping; there will not
	 * be any lingering 4KB page mappings in the TLB.)
	 */
	FUNC9(pde, newpde);

	FUNC7(&pmap_pde_mappings, 1);
	FUNC0(KTR_PMAP, "pmap_enter_pde: success for va %#lx"
	    " in pmap %p", va, pmap);
	return (KERN_SUCCESS);
}
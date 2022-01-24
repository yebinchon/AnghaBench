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
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_14__ {int /*<<< orphan*/  clean_eva; int /*<<< orphan*/  clean_sva; } ;
struct TYPE_12__ {scalar_t__ pv_memattr; } ;
struct TYPE_13__ {int oflags; scalar_t__ pindex; TYPE_1__ md; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RO ; 
 int /*<<< orphan*/  ATTR_AP_USER ; 
 int ATTR_DEFAULT ; 
 int ATTR_DESCR_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int ATTR_MASK ; 
 int ATTR_PXN ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_UXN ; 
 int ATTR_XN ; 
 int ATTR_nG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ DEVICE_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int L2_BLOCK ; 
 int L3_PAGE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spglist*) ; 
 int /*<<< orphan*/  VM_MAXUSER_ADDRESS ; 
 scalar_t__ VM_MEMATTR_WRITE_BACK ; 
 int FUNC8 (TYPE_2__*) ; 
 int VM_PROT_EXECUTE ; 
 int VPO_UNMANAGED ; 
 TYPE_2__* FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 scalar_t__ kernel_pmap ; 
 TYPE_8__ kmi ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int* FUNC13 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int* FUNC15 (int*,int /*<<< orphan*/ ) ; 
 size_t FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int*) ; 
 int* FUNC18 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (int*,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,struct rwlock**) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,struct spglist*) ; 
 int /*<<< orphan*/  FUNC23 (struct spglist*,int) ; 

__attribute__((used)) static vm_page_t
FUNC24(pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, vm_page_t mpte, struct rwlock **lockp)
{
	struct spglist free;
	pd_entry_t *pde;
	pt_entry_t *l2, *l3, l3_val;
	vm_paddr_t pa;
	int lvl;

	FUNC3(va < kmi.clean_sva || va >= kmi.clean_eva ||
	    (m->oflags & VPO_UNMANAGED) != 0,
	    ("pmap_enter_quick_locked: managed mapping within the clean submap"));
	FUNC6(pmap, MA_OWNED);

	FUNC2(KTR_PMAP, "pmap_enter_quick_locked: %p %lx", pmap, va);
	/*
	 * In the case that a page table page is not
	 * resident, we are creating it here.
	 */
	if (va < VM_MAXUSER_ADDRESS) {
		vm_pindex_t l2pindex;

		/*
		 * Calculate pagetable page index
		 */
		l2pindex = FUNC14(va);
		if (mpte && (mpte->pindex == l2pindex)) {
			mpte->ref_count++;
		} else {
			/*
			 * Get the l2 entry
			 */
			pde = FUNC18(pmap, va, &lvl);

			/*
			 * If the page table page is mapped, we just increment
			 * the hold count, and activate it.  Otherwise, we
			 * attempt to allocate a page table page.  If this
			 * attempt fails, we don't retry.  Instead, we give up.
			 */
			if (lvl == 1) {
				l2 = FUNC13(pde, va);
				if ((FUNC17(l2) & ATTR_DESCR_MASK) ==
				    L2_BLOCK)
					return (NULL);
			}
			if (lvl == 2 && FUNC17(pde) != 0) {
				mpte =
				    FUNC5(FUNC17(pde) & ~ATTR_MASK);
				mpte->ref_count++;
			} else {
				/*
				 * Pass NULL instead of the PV list lock
				 * pointer, because we don't intend to sleep.
				 */
				mpte = FUNC9(pmap, l2pindex, NULL);
				if (mpte == NULL)
					return (mpte);
			}
		}
		l3 = (pt_entry_t *)FUNC4(FUNC8(mpte));
		l3 = &l3[FUNC16(va)];
	} else {
		mpte = NULL;
		pde = FUNC18(kernel_pmap, va, &lvl);
		FUNC3(pde != NULL,
		    ("pmap_enter_quick_locked: Invalid page entry, va: 0x%lx",
		     va));
		FUNC3(lvl == 2,
		    ("pmap_enter_quick_locked: Invalid level %d", lvl));
		l3 = FUNC15(pde, va);
	}

	/*
	 * Abort if a mapping already exists.
	 */
	if (FUNC17(l3) != 0) {
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
	    !FUNC21(pmap, va, m, lockp)) {
		if (mpte != NULL) {
			FUNC7(&free);
			if (FUNC22(pmap, va, mpte, &free)) {
				FUNC12(pmap, va);
				FUNC23(&free, true);
			}
			mpte = NULL;
		}
		return (mpte);
	}

	/*
	 * Increment counters
	 */
	FUNC19(pmap, 1);

	pa = FUNC8(m);
	l3_val = pa | ATTR_DEFAULT | FUNC1(m->md.pv_memattr) |
	    FUNC0(ATTR_AP_RO) | L3_PAGE;
	if ((prot & VM_PROT_EXECUTE) == 0 || m->md.pv_memattr == DEVICE_MEMORY)
		l3_val |= ATTR_XN;
	if (va < VM_MAXUSER_ADDRESS)
		l3_val |= FUNC0(ATTR_AP_USER) | ATTR_PXN;
	else
		l3_val |= ATTR_UXN;
	if (pmap != kernel_pmap)
		l3_val |= ATTR_nG;

	/*
	 * Now validate mapping with RO protection
	 */
	if ((m->oflags & VPO_UNMANAGED) == 0) {
		l3_val |= ATTR_SW_MANAGED;
		l3_val &= ~ATTR_AF;
	}

	/* Sync icache before the mapping is stored to PTE */
	if ((prot & VM_PROT_EXECUTE) && pmap != kernel_pmap &&
	    m->md.pv_memattr == VM_MEMATTR_WRITE_BACK)
		FUNC10(FUNC4(pa), PAGE_SIZE);

	FUNC20(l3, l3_val);
	FUNC11(ishst);

	return (mpte);
}
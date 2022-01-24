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
struct TYPE_5__ {scalar_t__ valid; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RO ; 
 int ATTR_AP_RW_BIT ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_DBM ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  CACHED_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int L2_BLOCK ; 
 scalar_t__ L2_OFFSET ; 
 scalar_t__ L2_SIZE ; 
 int L2_TABLE ; 
 int L3_OFFSET ; 
 int L3_PAGE ; 
 scalar_t__ Ln_ENTRIES ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  NL3PG ; 
 scalar_t__ PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_l2_demotions ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int,struct rwlock**) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,struct rwlock**) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static pt_entry_t *
FUNC24(pmap_t pmap, pt_entry_t *l2, vm_offset_t va,
    struct rwlock **lockp)
{
	pt_entry_t *l3, newl3, oldl2;
	vm_offset_t tmpl2;
	vm_paddr_t l3phys;
	vm_page_t ml3;

	FUNC6(pmap, MA_OWNED);
	l3 = NULL;
	oldl2 = FUNC17(l2);
	FUNC4((oldl2 & ATTR_DESCR_MASK) == L2_BLOCK,
	    ("pmap_demote_l2: Demoting a non-block entry"));
	va &= ~L2_OFFSET;

	tmpl2 = 0;
	if (va <= (vm_offset_t)l2 && va + L2_SIZE > (vm_offset_t)l2) {
		tmpl2 = FUNC10(PAGE_SIZE);
		if (tmpl2 == 0)
			return (NULL);
	}

	/*
	 * Invalidate the 2MB page mapping and return "failure" if the
	 * mapping was never accessed.
	 */
	if ((oldl2 & ATTR_AF) == 0) {
		FUNC4((oldl2 & ATTR_SW_WIRED) == 0,
		    ("pmap_demote_l2: a wired mapping is missing ATTR_AF"));
		FUNC12(pmap, va, l2, lockp);
		FUNC1(KTR_PMAP, "pmap_demote_l2: failure for va %#lx in pmap %p",
		    va, pmap);
		goto fail;
	}

	if ((ml3 = FUNC19(pmap, va)) == NULL) {
		FUNC4((oldl2 & ATTR_SW_WIRED) == 0,
		    ("pmap_demote_l2: page table page for a wired mapping"
		    " is missing"));

		/*
		 * If the page table page is missing and the mapping
		 * is for a kernel address, the mapping must belong to
		 * the direct map.  Page table pages are preallocated
		 * for every other part of the kernel address space,
		 * so the direct map region is the only part of the
		 * kernel address space that must be handled here.
		 */
		FUNC4(va < VM_MAXUSER_ADDRESS || FUNC7(va),
		    ("pmap_demote_l2: No saved mpte for va %#lx", va));

		/*
		 * If the 2MB page mapping belongs to the direct map
		 * region of the kernel's address space, then the page
		 * allocation request specifies the highest possible
		 * priority (VM_ALLOC_INTERRUPT).  Otherwise, the
		 * priority is normal.
		 */
		ml3 = FUNC23(NULL, FUNC16(va),
		    (FUNC7(va) ? VM_ALLOC_INTERRUPT : VM_ALLOC_NORMAL) |
		    VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);

		/*
		 * If the allocation of the new page table page fails,
		 * invalidate the 2MB page mapping and return "failure".
		 */
		if (ml3 == NULL) {
			FUNC12(pmap, va, l2, lockp);
			FUNC1(KTR_PMAP, "pmap_demote_l2: failure for va %#lx"
			    " in pmap %p", va, pmap);
			goto fail;
		}

		if (va < VM_MAXUSER_ADDRESS) {
			ml3->ref_count = NL3PG;
			FUNC20(pmap, 1);
		}
	}
	l3phys = FUNC8(ml3);
	l3 = (pt_entry_t *)FUNC5(l3phys);
	newl3 = (oldl2 & ~ATTR_DESCR_MASK) | L3_PAGE;
	FUNC4((oldl2 & (ATTR_AP_RW_BIT | ATTR_SW_DBM)) !=
	    (FUNC0(ATTR_AP_RO) | ATTR_SW_DBM),
	    ("pmap_demote_l2: L2 entry is writeable but not dirty"));

	/*
	 * If the page table page is not leftover from an earlier promotion,
	 * or the mapping attributes have changed, (re)initialize the L3 table.
	 *
	 * When pmap_update_entry() clears the old L2 mapping, it (indirectly)
	 * performs a dsb().  That dsb() ensures that the stores for filling
	 * "l3" are visible before "l3" is added to the page table.
	 */
	if (ml3->valid == 0 || (l3[0] & ATTR_MASK) != (newl3 & ATTR_MASK))
		FUNC13(l3, newl3);

	/*
	 * Map the temporary page so we don't lose access to the l2 table.
	 */
	if (tmpl2 != 0) {
		FUNC14(tmpl2, PAGE_SIZE,
		    FUNC3((vm_offset_t)l2) & ~L3_OFFSET, CACHED_MEMORY);
		l2 = (pt_entry_t *)(tmpl2 + ((vm_offset_t)l2 & PAGE_MASK));
	}

	/*
	 * The spare PV entries must be reserved prior to demoting the
	 * mapping, that is, prior to changing the PDE.  Otherwise, the state
	 * of the L2 and the PV lists will be inconsistent, which can result
	 * in reclaim_pv_chunk() attempting to remove a PV entry from the
	 * wrong PV list and pmap_pv_demote_l2() failing to find the expected
	 * PV entry for the 2MB page mapping that is being demoted.
	 */
	if ((oldl2 & ATTR_SW_MANAGED) != 0)
		FUNC22(pmap, Ln_ENTRIES - 1, lockp);

	/*
	 * Pass PAGE_SIZE so that a single TLB invalidation is performed on
	 * the 2MB page mapping.
	 */
	FUNC21(pmap, l2, l3phys | L2_TABLE, va, PAGE_SIZE);

	/*
	 * Demote the PV entry.
	 */
	if ((oldl2 & ATTR_SW_MANAGED) != 0)
		FUNC18(pmap, va, oldl2 & ~ATTR_MASK, lockp);

	FUNC9(&pmap_l2_demotions, 1);
	FUNC2(KTR_PMAP, "pmap_demote_l2: success for va %#lx"
	    " in pmap %p %lx", va, pmap, l3[0]);

fail:
	if (tmpl2 != 0) {
		FUNC15(tmpl2);
		FUNC11(tmpl2, PAGE_SIZE);
	}

	return (l3);

}
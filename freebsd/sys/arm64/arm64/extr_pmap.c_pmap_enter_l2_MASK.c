#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int u_int ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  TYPE_3__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_22__ {size_t wired_count; size_t resident_count; } ;
struct TYPE_24__ {TYPE_1__ pm_stats; } ;
struct TYPE_23__ {int ref_count; } ;

/* Variables and functions */
 int ATTR_DESCR_MASK ; 
 scalar_t__ ATTR_MASK ; 
 int ATTR_SW_DBM ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KERN_FAILURE ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int L2_BLOCK ; 
 size_t L2_SIZE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int PMAP_ENTER_NOREPLACE ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spglist*) ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,scalar_t__,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__) ; 
 int* FUNC14 (TYPE_3__*,scalar_t__) ; 
 size_t FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_l2_mappings ; 
 scalar_t__ FUNC16 (int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__,int,int,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int*,scalar_t__,scalar_t__,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int,scalar_t__,scalar_t__,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC20 (int*,int) ; 
 scalar_t__ FUNC21 (TYPE_3__*,scalar_t__,TYPE_2__*,struct spglist*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct spglist*,int) ; 

__attribute__((used)) static int
FUNC24(pmap_t pmap, vm_offset_t va, pd_entry_t new_l2, u_int flags,
    vm_page_t m, struct rwlock **lockp)
{
	struct spglist free;
	pd_entry_t *l2, old_l2;
	vm_page_t l2pg, mt;

	FUNC4(pmap, MA_OWNED);

	if ((l2pg = FUNC10(pmap, va, (flags & PMAP_ENTER_NOSLEEP) != 0 ?
	    NULL : lockp)) == NULL) {
		FUNC0(KTR_PMAP, "pmap_enter_l2: failure for va %#lx in pmap %p",
		    va, pmap);
		return (KERN_RESOURCE_SHORTAGE);
	}

	l2 = (pd_entry_t *)FUNC2(FUNC6(l2pg));
	l2 = &l2[FUNC15(va)];
	if ((old_l2 = FUNC16(l2)) != 0) {
		FUNC1(l2pg->ref_count > 1,
		    ("pmap_enter_l2: l2pg's ref count is too low"));
		if ((flags & PMAP_ENTER_NOREPLACE) != 0) {
			l2pg->ref_count--;
			FUNC0(KTR_PMAP,
			    "pmap_enter_l2: failure for va %#lx in pmap %p",
			    va, pmap);
			return (KERN_FAILURE);
		}
		FUNC5(&free);
		if ((old_l2 & ATTR_DESCR_MASK) == L2_BLOCK)
			(void)FUNC18(pmap, l2, va,
			    FUNC16(FUNC14(pmap, va)), &free, lockp);
		else
			FUNC19(pmap, old_l2, va, va + L2_SIZE,
			    &free, lockp);
		FUNC23(&free, true);
		if (va >= VM_MAXUSER_ADDRESS) {
			/*
			 * Both pmap_remove_l2() and pmap_remove_l3_range()
			 * will leave the kernel page table page zero filled.
			 * Nonetheless, the TLB could have an intermediate
			 * entry for the kernel page table page.
			 */
			mt = FUNC3(FUNC16(l2) & ~ATTR_MASK);
			if (FUNC12(pmap, mt, false))
				FUNC9("pmap_enter_l2: trie insert failed");
			FUNC11(l2);
			FUNC13(pmap, va);
		} else
			FUNC1(FUNC16(l2) == 0,
			    ("pmap_enter_l2: non-zero L2 entry %p", l2));
	}

	if ((new_l2 & ATTR_SW_MANAGED) != 0) {
		/*
		 * Abort this mapping if its PV entry could not be created.
		 */
		if (!FUNC17(pmap, va, new_l2, flags, lockp)) {
			FUNC5(&free);
			if (FUNC21(pmap, va, l2pg, &free)) {
				/*
				 * Although "va" is not mapped, the TLB could
				 * nonetheless have intermediate entries that
				 * refer to the freed page table pages.
				 * Invalidate those entries.
				 *
				 * XXX redundant invalidation (See
				 * _pmap_unwire_l3().)
				 */
				FUNC13(pmap, va);
				FUNC23(&free, true);
			}
			FUNC0(KTR_PMAP,
			    "pmap_enter_l2: failure for va %#lx in pmap %p",
			    va, pmap);
			return (KERN_RESOURCE_SHORTAGE);
		}
		if ((new_l2 & ATTR_SW_DBM) != 0)
			for (mt = m; mt < &m[L2_SIZE / PAGE_SIZE]; mt++)
				FUNC22(mt, PGA_WRITEABLE);
	}

	/*
	 * Increment counters.
	 */
	if ((new_l2 & ATTR_SW_WIRED) != 0)
		pmap->pm_stats.wired_count += L2_SIZE / PAGE_SIZE;
	pmap->pm_stats.resident_count += L2_SIZE / PAGE_SIZE;

	/*
	 * Map the superpage.
	 */
	FUNC20(l2, new_l2);
	FUNC8(ishst);

	FUNC7(&pmap_l2_mappings, 1);
	FUNC0(KTR_PMAP, "pmap_enter_l2: success for va %#lx in pmap %p",
	    va, pmap);

	return (KERN_SUCCESS);
}
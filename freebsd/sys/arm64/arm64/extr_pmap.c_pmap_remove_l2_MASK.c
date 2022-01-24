#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_20__ {int wired_count; } ;
struct TYPE_23__ {TYPE_1__ pm_stats; } ;
struct TYPE_21__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_22__ {scalar_t__ valid; scalar_t__ ref_count; TYPE_2__ md; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (struct rwlock**,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int L2_BLOCK ; 
 int L2_OFFSET ; 
 int L2_SIZE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NL3PG ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 TYPE_4__* kernel_pmap ; 
 struct md_page* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct spglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (int*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct md_page*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int*,int) ; 
 TYPE_3__* FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int) ; 
 int FUNC14 (TYPE_4__*,int,int /*<<< orphan*/ ,struct spglist*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC18(pmap_t pmap, pt_entry_t *l2, vm_offset_t sva,
    pd_entry_t l1e, struct spglist *free, struct rwlock **lockp)
{
	struct md_page *pvh;
	pt_entry_t old_l2;
	vm_offset_t eva, va;
	vm_page_t m, ml3;

	FUNC3(pmap, MA_OWNED);
	FUNC1((sva & L2_OFFSET) == 0, ("pmap_remove_l2: sva is not aligned"));
	old_l2 = FUNC8(l2);
	FUNC1((old_l2 & ATTR_DESCR_MASK) == L2_BLOCK,
	    ("pmap_remove_l2: L2e %lx is not a block mapping", old_l2));

	/*
	 * Since a promotion must break the 4KB page mappings before making
	 * the 2MB page mapping, a pmap_invalidate_page() suffices.
	 */
	FUNC7(pmap, sva);

	if (old_l2 & ATTR_SW_WIRED)
		pmap->pm_stats.wired_count -= L2_SIZE / PAGE_SIZE;
	FUNC13(pmap, L2_SIZE / PAGE_SIZE);
	if (old_l2 & ATTR_SW_MANAGED) {
		FUNC0(lockp, old_l2 & ~ATTR_MASK);
		pvh = FUNC5(old_l2 & ~ATTR_MASK);
		FUNC10(pvh, pmap, sva);
		eva = sva + L2_SIZE;
		for (va = sva, m = FUNC2(old_l2 & ~ATTR_MASK);
		    va < eva; va += PAGE_SIZE, m++) {
			if (FUNC9(old_l2))
				FUNC17(m);
			if (old_l2 & ATTR_AF)
				FUNC16(m, PGA_REFERENCED);
			if (FUNC4(&m->md.pv_list) &&
			    FUNC4(&pvh->pv_list))
				FUNC15(m, PGA_WRITEABLE);
		}
	}
	if (pmap == kernel_pmap) {
		FUNC11(pmap, l2, sva);
	} else {
		ml3 = FUNC12(pmap, sva);
		if (ml3 != NULL) {
			FUNC1(ml3->valid == VM_PAGE_BITS_ALL,
			    ("pmap_remove_l2: l3 page not promoted"));
			FUNC13(pmap, 1);
			FUNC1(ml3->ref_count == NL3PG,
			    ("pmap_remove_l2: l3 page ref count error"));
			ml3->ref_count = 0;
			FUNC6(ml3, free, FALSE);
		}
	}
	return (FUNC14(pmap, sva, l1e, free));
}
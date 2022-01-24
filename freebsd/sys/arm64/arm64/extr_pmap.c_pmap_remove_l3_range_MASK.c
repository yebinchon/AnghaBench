#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_19__ {TYPE_1__ pm_stats; } ;
struct TYPE_16__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_18__ {int flags; TYPE_10__ md; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ L2_SIZE ; 
 scalar_t__ L3_SIZE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 struct rwlock* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct md_page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 scalar_t__ FUNC15 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,struct spglist*) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC19 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC23(pmap_t pmap, pd_entry_t l2e, vm_offset_t sva,
    vm_offset_t eva, struct spglist *free, struct rwlock **lockp)
{
	struct md_page *pvh;
	struct rwlock *new_lock;
	pt_entry_t *l3, old_l3;
	vm_offset_t va;
	vm_page_t m;

	FUNC3(pmap, MA_OWNED);
	FUNC0(FUNC16(sva, L2_SIZE) + L2_SIZE == FUNC17(eva, L2_SIZE),
	    ("pmap_remove_l3_range: range crosses an L3 page table boundary"));
	va = eva;
	for (l3 = FUNC8(&l2e, sva); sva != eva; l3++, sva += L3_SIZE) {
		if (!FUNC9(FUNC10(l3))) {
			if (va != eva) {
				FUNC7(pmap, va, sva);
				va = eva;
			}
			continue;
		}
		old_l3 = FUNC11(l3);
		if ((old_l3 & ATTR_SW_WIRED) != 0)
			pmap->pm_stats.wired_count--;
		FUNC14(pmap, 1);
		if ((old_l3 & ATTR_SW_MANAGED) != 0) {
			m = FUNC2(old_l3 & ~ATTR_MASK);
			if (FUNC12(old_l3))
				FUNC22(m);
			if ((old_l3 & ATTR_AF) != 0)
				FUNC21(m, PGA_REFERENCED);
			new_lock = FUNC1(FUNC5(m));
			if (new_lock != *lockp) {
				if (*lockp != NULL) {
					/*
					 * Pending TLB invalidations must be
					 * performed before the PV list lock is
					 * released.  Otherwise, a concurrent
					 * pmap_remove_all() on a physical page
					 * could return while a stale TLB entry
					 * still provides access to that page. 
					 */
					if (va != eva) {
						FUNC7(pmap, va,
						    sva);
						va = eva;
					}
					FUNC19(*lockp);
				}
				*lockp = new_lock;
				FUNC18(*lockp);
			}
			FUNC13(&m->md, pmap, sva);
			if (FUNC4(&m->md.pv_list) &&
			    (m->flags & PG_FICTITIOUS) == 0) {
				pvh = FUNC6(FUNC5(m));
				if (FUNC4(&pvh->pv_list))
					FUNC20(m, PGA_WRITEABLE);
			}
		}
		if (va == eva)
			va = sva;
		if (FUNC15(pmap, sva, l2e, free)) {
			sva += L3_SIZE;
			break;
		}
	}
	if (va != eva)
		FUNC7(pmap, va, sva);
}
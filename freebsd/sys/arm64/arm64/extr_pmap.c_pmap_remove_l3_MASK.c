#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_18__ {int wired_count; } ;
struct TYPE_20__ {TYPE_1__ pm_stats; } ;
struct TYPE_17__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_19__ {int flags; TYPE_10__ md; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (struct rwlock**,TYPE_2__*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct md_page* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spglist*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC15(pmap_t pmap, pt_entry_t *l3, vm_offset_t va,
    pd_entry_t l2e, struct spglist *free, struct rwlock **lockp)
{
	struct md_page *pvh;
	pt_entry_t old_l3;
	vm_page_t m;

	FUNC2(pmap, MA_OWNED);
	old_l3 = FUNC7(l3);
	FUNC6(pmap, va);
	if (old_l3 & ATTR_SW_WIRED)
		pmap->pm_stats.wired_count -= 1;
	FUNC10(pmap, 1);
	if (old_l3 & ATTR_SW_MANAGED) {
		m = FUNC1(old_l3 & ~ATTR_MASK);
		if (FUNC8(old_l3))
			FUNC14(m);
		if (old_l3 & ATTR_AF)
			FUNC13(m, PGA_REFERENCED);
		FUNC0(lockp, m);
		FUNC9(&m->md, pmap, va);
		if (FUNC3(&m->md.pv_list) &&
		    (m->flags & PG_FICTITIOUS) == 0) {
			pvh = FUNC5(FUNC4(m));
			if (FUNC3(&pvh->pv_list))
				FUNC12(m, PGA_WRITEABLE);
		}
	}
	return (FUNC11(pmap, va, l2e, free));
}
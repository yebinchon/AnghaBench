#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_21__ {int wired_count; } ;
struct TYPE_23__ {TYPE_1__ pm_stats; } ;
struct TYPE_20__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_22__ {int flags; TYPE_11__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rwlock**,TYPE_2__*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_W ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct md_page* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spglist*) ; 
 int FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC17(pmap_t pmap, pt_entry_t *ptq, vm_offset_t va, 
    pd_entry_t ptepde, struct spglist *free, struct rwlock **lockp)
{
	struct md_page *pvh;
	pt_entry_t oldpte, PG_A, PG_M, PG_RW;
	vm_page_t m;

	PG_A = FUNC6(pmap);
	PG_M = FUNC8(pmap);
	PG_RW = FUNC11(pmap);

	FUNC2(pmap, MA_OWNED);
	oldpte = FUNC13(ptq);
	if (oldpte & PG_W)
		pmap->pm_stats.wired_count -= 1;
	FUNC10(pmap, 1);
	if (oldpte & PG_MANAGED) {
		m = FUNC1(oldpte & PG_FRAME);
		if ((oldpte & (PG_M | PG_RW)) == (PG_M | PG_RW))
			FUNC16(m);
		if (oldpte & PG_A)
			FUNC15(m, PGA_REFERENCED);
		FUNC0(lockp, m);
		FUNC9(&m->md, pmap, va);
		if (FUNC3(&m->md.pv_list) &&
		    (m->flags & PG_FICTITIOUS) == 0) {
			pvh = FUNC5(FUNC4(m));
			if (FUNC3(&pvh->pv_list))
				FUNC14(m, PGA_WRITEABLE);
		}
		FUNC7(m);
	}
	return (FUNC12(pmap, va, ptepde, free));
}
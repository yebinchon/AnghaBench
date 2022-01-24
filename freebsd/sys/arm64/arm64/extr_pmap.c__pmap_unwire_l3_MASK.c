#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_6__ {scalar_t__ pindex; } ;

/* Variables and functions */
 int ATTR_MASK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NUL1E ; 
 scalar_t__ NUL2E ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct spglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct spglist*) ; 

__attribute__((used)) static void
FUNC11(pmap_t pmap, vm_offset_t va, vm_page_t m, struct spglist *free)
{

	FUNC1(pmap, MA_OWNED);
	/*
	 * unmap the page table page
	 */
	if (m->pindex >= (NUL2E + NUL1E)) {
		/* l1 page */
		pd_entry_t *l0;

		l0 = FUNC5(pmap, va);
		FUNC3(l0);
	} else if (m->pindex >= NUL2E) {
		/* l2 page */
		pd_entry_t *l1;

		l1 = FUNC6(pmap, va);
		FUNC3(l1);
	} else {
		/* l3 page */
		pd_entry_t *l2;

		l2 = FUNC7(pmap, va);
		FUNC3(l2);
	}
	FUNC9(pmap, 1);
	if (m->pindex < NUL2E) {
		/* We just released an l3, unhold the matching l2 */
		pd_entry_t *l1, tl1;
		vm_page_t l2pg;

		l1 = FUNC6(pmap, va);
		tl1 = FUNC8(l1);
		l2pg = FUNC0(tl1 & ~ATTR_MASK);
		FUNC10(pmap, va, l2pg, free);
	} else if (m->pindex < (NUL2E + NUL1E)) {
		/* We just released an l2, unhold the matching l1 */
		pd_entry_t *l0, tl0;
		vm_page_t l1pg;

		l0 = FUNC5(pmap, va);
		tl0 = FUNC8(l0);
		l1pg = FUNC0(tl0 & ~ATTR_MASK);
		FUNC10(pmap, va, l1pg, free);
	}
	FUNC4(pmap, va);

	/*
	 * Put page on a list so that it is released after
	 * *ALL* TLB shootdown is done
	 */
	FUNC2(m, free, TRUE);
}
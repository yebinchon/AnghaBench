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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  pt1_entry_t ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pm_pt1; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_page_t
FUNC9(pmap_t pmap, vm_offset_t va, u_int flags)
{
	u_int pte1_idx;
	pt1_entry_t *pte1p, pte1;
	vm_page_t m;

	pte1_idx = FUNC4(va);
retry:
	pte1p = pmap->pm_pt1 + pte1_idx;
	pte1 = FUNC8(pte1p);

	/*
	 * This supports switching from a 1MB page to a
	 * normal 4K page.
	 */
	if (FUNC6(pte1)) {
		(void)FUNC2(pmap, pte1p, va);
		/*
		 * Reload pte1 after demotion.
		 *
		 * Note: Demotion can even fail as either PT2 is not find for
		 *       the virtual address or PT2PG can not be allocated.
		 */
		pte1 = FUNC8(pte1p);
	}

	/*
	 * If the L2 page table page is mapped, we just increment the
	 * hold count, and activate it.
	 */
	if (FUNC5(pte1)) {
		m = FUNC0(FUNC7(pte1));
		FUNC3(m, pte1_idx);
	} else  {
		/*
		 * Here if the PT2 isn't mapped, or if it has
		 * been deallocated.
		 */
		m = FUNC1(pmap, va, flags);
		if (m == NULL && (flags & PMAP_ENTER_NOSLEEP) == 0)
			goto retry;
	}

	return (m);
}
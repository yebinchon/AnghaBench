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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int PG_FRAME ; 
 int PG_PS ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct rwlock**) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_page_t
FUNC6(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
	vm_pindex_t ptepindex;
	pd_entry_t *pd, PG_V;
	vm_page_t m;

	PG_V = FUNC5(pmap);

	/*
	 * Calculate pagetable page index
	 */
	ptepindex = FUNC4(va);
retry:
	/*
	 * Get the page directory entry
	 */
	pd = FUNC3(pmap, va);

	/*
	 * This supports switching from a 2MB page to a
	 * normal 4K page.
	 */
	if (pd != NULL && (*pd & (PG_PS | PG_V)) == (PG_PS | PG_V)) {
		if (!FUNC2(pmap, pd, va, lockp)) {
			/*
			 * Invalidation of the 2MB page mapping may have caused
			 * the deallocation of the underlying PD page.
			 */
			pd = NULL;
		}
	}

	/*
	 * If the page table page is mapped, we just increment the
	 * hold count, and activate it.
	 */
	if (pd != NULL && (*pd & PG_V) != 0) {
		m = FUNC0(*pd & PG_FRAME);
		m->ref_count++;
	} else {
		/*
		 * Here if the pte page isn't mapped, or if it has been
		 * deallocated.
		 */
		m = FUNC1(pmap, ptepindex, lockp);
		if (m == NULL && lockp != NULL)
			goto retry;
	}
	return (m);
}
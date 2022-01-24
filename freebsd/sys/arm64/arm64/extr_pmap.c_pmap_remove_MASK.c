#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_10__ {scalar_t__ resident_count; } ;
struct TYPE_11__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int ATTR_DESCR_MASK ; 
 int L0_OFFSET ; 
 int L0_SIZE ; 
 int L1_OFFSET ; 
 int L1_SIZE ; 
 int L2_BLOCK ; 
 int L2_OFFSET ; 
 int L2_SIZE ; 
 int L2_TABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct spglist*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,struct rwlock**) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int,int,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int,int,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC10 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC11 (struct spglist*,int) ; 

void
FUNC12(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
	struct rwlock *lock;
	vm_offset_t va_next;
	pd_entry_t *l0, *l1, *l2;
	pt_entry_t l3_paddr;
	struct spglist free;

	/*
	 * Perform an unsynchronized read.  This is, however, safe.
	 */
	if (pmap->pm_stats.resident_count == 0)
		return;

	FUNC2(&free);

	FUNC0(pmap);

	lock = NULL;
	for (; sva < eva; sva = va_next) {

		if (pmap->pm_stats.resident_count == 0)
			break;

		l0 = FUNC4(pmap, sva);
		if (FUNC7(l0) == 0) {
			va_next = (sva + L0_SIZE) & ~L0_OFFSET;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		l1 = FUNC5(l0, sva);
		if (FUNC7(l1) == 0) {
			va_next = (sva + L1_SIZE) & ~L1_OFFSET;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		/*
		 * Calculate index for next page table.
		 */
		va_next = (sva + L2_SIZE) & ~L2_OFFSET;
		if (va_next < sva)
			va_next = eva;

		l2 = FUNC6(l1, sva);
		if (l2 == NULL)
			continue;

		l3_paddr = FUNC7(l2);

		if ((l3_paddr & ATTR_DESCR_MASK) == L2_BLOCK) {
			if (sva + L2_SIZE == va_next && eva >= va_next) {
				FUNC8(pmap, l2, sva, FUNC7(l1),
				    &free, &lock);
				continue;
			} else if (FUNC3(pmap, l2, sva,
			    &lock) == NULL)
				continue;
			l3_paddr = FUNC7(l2);
		}

		/*
		 * Weed out invalid mappings.
		 */
		if ((l3_paddr & ATTR_DESCR_MASK) != L2_TABLE)
			continue;

		/*
		 * Limit our scan to either the end of the va represented
		 * by the current page table page, or to the end of the
		 * range being removed.
		 */
		if (va_next > eva)
			va_next = eva;

		FUNC9(pmap, l3_paddr, sva, va_next, &free,
		    &lock);
	}
	if (lock != NULL)
		FUNC10(lock);
	FUNC1(pmap);
	FUNC11(&free, true);
}
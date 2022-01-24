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
typedef  int vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int L1_TABLE ; 
 int Ln_ENTRIES_SHIFT ; 
 scalar_t__ NUL2E ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__,struct rwlock**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_page_t
FUNC5(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
	pd_entry_t *l1;
	vm_page_t l2pg;
	vm_pindex_t l2pindex;

retry:
	l1 = FUNC2(pmap, va);
	if (l1 != NULL && (FUNC4(l1) & ATTR_DESCR_MASK) == L1_TABLE) {
		/* Add a reference to the L2 page. */
		l2pg = FUNC0(FUNC4(l1) & ~ATTR_MASK);
		l2pg->ref_count++;
	} else {
		/* Allocate a L2 page. */
		l2pindex = FUNC3(va) >> Ln_ENTRIES_SHIFT;
		l2pg = FUNC1(pmap, NUL2E + l2pindex, lockp);
		if (l2pg == NULL && lockp != NULL)
			goto retry;
	}
	return (l2pg);
}
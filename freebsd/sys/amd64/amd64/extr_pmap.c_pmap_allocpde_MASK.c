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
typedef  int pdp_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int NPDPEPGSHIFT ; 
 scalar_t__ NUPDE ; 
 int PG_FRAME ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__,struct rwlock**) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_page_t
FUNC5(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
	vm_pindex_t pdpindex, ptepindex;
	pdp_entry_t *pdpe, PG_V;
	vm_page_t pdpg;

	PG_V = FUNC4(pmap);

retry:
	pdpe = FUNC3(pmap, va);
	if (pdpe != NULL && (*pdpe & PG_V) != 0) {
		/* Add a reference to the pd page. */
		pdpg = FUNC0(*pdpe & PG_FRAME);
		pdpg->ref_count++;
	} else {
		/* Allocate a pd page. */
		ptepindex = FUNC2(va);
		pdpindex = ptepindex >> NPDPEPGSHIFT;
		pdpg = FUNC1(pmap, NUPDE + pdpindex, lockp);
		if (pdpg == NULL && lockp != NULL)
			goto retry;
	}
	return (pdpg);
}
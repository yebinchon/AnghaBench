#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  size_t u_short ;
struct l2_dtable {TYPE_2__* l2_bucket; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_7__ {struct l2_dtable** pm_l2; TYPE_1__* pm_l1; } ;
struct TYPE_6__ {int /*<<< orphan*/ * l2b_kva; } ;
struct TYPE_5__ {int /*<<< orphan*/ * l1_kva; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC5(pmap_t pm, vm_offset_t va, pd_entry_t **pdp, pt_entry_t **ptp)
{
	struct l2_dtable *l2;
	pd_entry_t *pl1pd, l1pd;
	pt_entry_t *ptep;
	u_short l1idx;

	if (pm->pm_l1 == NULL)
		return (FALSE);

	l1idx = FUNC0(va);
	*pdp = pl1pd = &pm->pm_l1->l1_kva[l1idx];
	l1pd = *pl1pd;

	if (FUNC3(l1pd)) {
		*ptp = NULL;
		return (TRUE);
	}

	if (pm->pm_l2 == NULL)
		return (FALSE);

	l2 = pm->pm_l2[FUNC2(l1idx)];

	if (l2 == NULL ||
	    (ptep = l2->l2_bucket[FUNC1(l1idx)].l2b_kva) == NULL) {
		return (FALSE);
	}

	*ptp = &ptep[FUNC4(va)];
	return (TRUE);
}
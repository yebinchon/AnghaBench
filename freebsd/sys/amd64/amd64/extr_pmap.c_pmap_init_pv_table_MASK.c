#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NBPDR ; 
 long NPV_LIST_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 TYPE_2__ pv_dummy ; 
 int /*<<< orphan*/ * pv_list_locks ; 
 struct md_page* pv_table ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int vm_phys_nsegs ; 
 TYPE_1__* vm_phys_segs ; 

__attribute__((used)) static void
FUNC5(void)
{
	vm_size_t s;
	long i, pv_npg;

	/*
	 * Initialize the pool of pv list locks.
	 */
	for (i = 0; i < NPV_LIST_LOCKS; i++)
		FUNC4(&pv_list_locks[i], "pmap pv list");

	/*
	 * Calculate the size of the pv head table for superpages.
	 */
	pv_npg = FUNC1(vm_phys_segs[vm_phys_nsegs - 1].end, NBPDR);

	/*
	 * Allocate memory for the pv head table for superpages.
	 */
	s = (vm_size_t)pv_npg * sizeof(struct md_page);
	s = FUNC3(s);
	pv_table = (struct md_page *)FUNC2(s, M_WAITOK | M_ZERO);
	for (i = 0; i < pv_npg; i++)
		FUNC0(&pv_table[i].pv_list);
	FUNC0(&pv_dummy.pv_list);
}
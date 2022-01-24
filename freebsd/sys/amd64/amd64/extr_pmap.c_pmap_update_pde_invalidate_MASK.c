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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pt_entry_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_5__ {scalar_t__ pm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_PS ; 
 scalar_t__ PT_X86 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(pmap_t pmap, vm_offset_t va, pd_entry_t newpde)
{
	pt_entry_t PG_G;

	if (FUNC5(pmap))
		return;

	FUNC0(pmap->pm_type == PT_X86,
	    ("pmap_update_pde_invalidate: invalid type %d", pmap->pm_type));

	PG_G = FUNC4(pmap);

	if ((newpde & PG_PS) == 0)
		/* Demotion: flush a specific 2MB page mapping. */
		FUNC1(va);
	else if ((newpde & PG_G) == 0)
		/*
		 * Promotion: flush every 4KB page mapping from the TLB
		 * because there are too many to flush individually.
		 */
		FUNC2();
	else {
		/*
		 * Promotion: flush every 4KB page mapping from the TLB,
		 * including any global (PG_G) mappings.
		 */
		FUNC3();
	}
}
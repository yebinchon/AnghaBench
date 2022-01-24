#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pv_entry {int dummy; } ;
struct l2_dtable {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;

/* Variables and functions */
 int L2_TABLE_SIZE_REAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PMAP_SHPGPERPROC ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int UMA_ZONE_NOFREE ; 
 int UMA_ZONE_VM ; 
 void* l2table_zone ; 
 void* l2zone ; 
 int maxproc ; 
 int /*<<< orphan*/ * pmap_l2ptp_ctor ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int pv_entry_high_water ; 
 int pv_entry_max ; 
 void* pvzone ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 TYPE_1__ vm_cnt ; 

void
FUNC5(void)
{
	int shpgperproc = PMAP_SHPGPERPROC;

	l2zone = FUNC3("L2 Table", L2_TABLE_SIZE_REAL, pmap_l2ptp_ctor,
	    NULL, NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);
	l2table_zone = FUNC3("L2 Table", sizeof(struct l2_dtable), NULL,
	    NULL, NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);

	/*
	 * Initialize the PV entry allocator.
	 */
	pvzone = FUNC3("PV ENTRY", sizeof (struct pv_entry), NULL, NULL,
	    NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);
	FUNC1("vm.pmap.shpgperproc", &shpgperproc);
	pv_entry_max = shpgperproc * maxproc + vm_cnt.v_page_count;
	FUNC4(pvzone, pv_entry_max);
	pv_entry_high_water = 9 * (pv_entry_max / 10);

	/*
	 * Now it is safe to enable pv_table recording.
	 */
	FUNC0(1, FUNC2("pmap_init: done!\n"));
}
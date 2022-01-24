#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_9__ {int resident_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  pv_pa; } ;
struct TYPE_7__ {TYPE_6__ pm_stats; int /*<<< orphan*/  pm_pvlist; int /*<<< orphan*/  pm_active; TYPE_6__* pm_l2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ KERNBASE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PMAP_ENTER_WIRED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 TYPE_2__ systempage ; 
 scalar_t__ vector_page ; 

int
FUNC8(pmap_t pmap)
{
	FUNC1(1, FUNC7("pmap_pinit: pmap = %08x\n", (uint32_t) pmap));

	FUNC5(pmap);
	FUNC4(pmap->pm_l2, sizeof(pmap->pm_l2));

	FUNC0(&pmap->pm_active);

	FUNC3(&pmap->pm_pvlist);
	FUNC4(&pmap->pm_stats, sizeof pmap->pm_stats);
	pmap->pm_stats.resident_count = 1;
	if (vector_page < KERNBASE) {
		FUNC6(pmap, vector_page, FUNC2(systempage.pv_pa),
		    VM_PROT_READ, PMAP_ENTER_WIRED | VM_PROT_READ, 0);
	}
	return (1);
}
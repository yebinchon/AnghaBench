#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_9__ {TYPE_1__* pm_pcids; } ;
struct TYPE_8__ {scalar_t__ pm_gen; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curpmap ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(pmap_t pmap, vm_offset_t va, pd_entry_t *pde, pd_entry_t newpde)
{

	FUNC2(pmap, pde, newpde);
	if (pmap == kernel_pmap || pmap == FUNC0(curpmap))
		FUNC1(pmap, va, newpde);
	else
		pmap->pm_pcids[0].pm_gen = 0;
}
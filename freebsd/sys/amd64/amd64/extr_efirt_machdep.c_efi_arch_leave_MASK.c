#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* pmap_t ;
struct TYPE_14__ {TYPE_1__* p_vmspace; } ;
struct TYPE_11__ {int /*<<< orphan*/  md_efirt_dis_pf; } ;
struct TYPE_13__ {TYPE_3__ td_md; } ;
struct TYPE_12__ {int pm_cr3; TYPE_2__* pm_pcids; } ;
struct TYPE_10__ {int pm_pcid; } ;
struct TYPE_9__ {TYPE_4__ vm_pmap; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_6__* curproc ; 
 TYPE_5__* curthread ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  invpcid_works ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ pmap_pcid_enabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	pmap_t curpmap;

	curpmap = &curproc->p_vmspace->vm_pmap;
	if (pmap_pcid_enabled && !invpcid_works)
		FUNC1(curpmap, curpmap);
	FUNC3(curpmap->pm_cr3 | (pmap_pcid_enabled ?
	    curpmap->pm_pcids[FUNC0(cpuid)].pm_pcid : 0));
	if (!pmap_pcid_enabled)
		FUNC2();
	FUNC4(curthread->td_md.md_efirt_dis_pf);
}
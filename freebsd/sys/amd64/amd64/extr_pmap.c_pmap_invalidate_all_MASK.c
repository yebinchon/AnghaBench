#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct invpcid_descr {int pcid; scalar_t__ addr; scalar_t__ pad; } ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_7__ {scalar_t__ pm_type; int pm_ucr3; int pm_cr3; TYPE_1__* pm_pcids; int /*<<< orphan*/  pm_eptgen; } ;
struct TYPE_6__ {int pm_pcid; scalar_t__ pm_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVPCID_CTX ; 
 int /*<<< orphan*/  INVPCID_CTXGLOB ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int PMAP_NO_CR3 ; 
 int PMAP_PCID_USER_PT ; 
 scalar_t__ PT_EPT ; 
 scalar_t__ PT_RVI ; 
 scalar_t__ PT_X86 ; 
 int /*<<< orphan*/  FUNC2 (struct invpcid_descr*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  curpmap ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct invpcid_descr*,int /*<<< orphan*/ ) ; 
 scalar_t__ invpcid_works ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ pmap_pcid_enabled ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

void
FUNC10(pmap_t pmap)
{
	struct invpcid_descr d;
	uint64_t kcr3, ucr3;

	if (pmap->pm_type == PT_RVI || pmap->pm_type == PT_EPT) {
		pmap->pm_eptgen++;
		return;
	}
	FUNC0(pmap->pm_type == PT_X86,
	    ("pmap_invalidate_all: unknown type %d", pmap->pm_type));

	if (pmap == kernel_pmap) {
		if (pmap_pcid_enabled && invpcid_works) {
			FUNC2(&d, sizeof(d));
			FUNC7(&d, INVPCID_CTXGLOB);
		} else {
			FUNC6();
		}
	} else if (pmap == FUNC1(curpmap)) {
		if (pmap_pcid_enabled) {
			FUNC3();
			if (invpcid_works) {
				d.pcid = pmap->pm_pcids[0].pm_pcid;
				d.pad = 0;
				d.addr = 0;
				FUNC7(&d, INVPCID_CTX);
				if (pmap->pm_ucr3 != PMAP_NO_CR3) {
					d.pcid |= PMAP_PCID_USER_PT;
					FUNC7(&d, INVPCID_CTX);
				}
			} else {
				kcr3 = pmap->pm_cr3 | pmap->pm_pcids[0].pm_pcid;
				if (pmap->pm_ucr3 != PMAP_NO_CR3) {
					ucr3 = pmap->pm_ucr3 | pmap->pm_pcids[
					    0].pm_pcid | PMAP_PCID_USER_PT;
					FUNC9(ucr3, kcr3);
				} else
					FUNC8(kcr3);
			}
			FUNC4();
		} else {
			FUNC5();
		}
	} else if (pmap_pcid_enabled) {
		pmap->pm_pcids[0].pm_gen = 0;
	}
}
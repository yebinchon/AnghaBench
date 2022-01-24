#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  pm_l0_paddr; int /*<<< orphan*/  pm_cookie; int /*<<< orphan*/  pm_root; TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int ASID_FIRST_AVAILABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ asid_epoch ; 
 int /*<<< orphan*/  asid_set ; 
 int /*<<< orphan*/  asid_set_mutex ; 
 int asid_set_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(pmap_t pmap)
{
	vm_page_t m;
	int asid;

	FUNC2(pmap->pm_stats.resident_count == 0,
	    ("pmap_release: pmap resident count %ld != 0",
	    pmap->pm_stats.resident_count));
	FUNC2(FUNC9(&pmap->pm_root),
	    ("pmap_release: pmap has reserved page table page(s)"));

	FUNC5(&asid_set_mutex);
	if (FUNC1(pmap->pm_cookie) == asid_epoch) {
		asid = FUNC0(pmap->pm_cookie);
		FUNC2(asid >= ASID_FIRST_AVAILABLE && asid < asid_set_size,
		    ("pmap_release: pmap cookie has out-of-range asid"));
		FUNC4(asid_set, asid);
	}
	FUNC6(&asid_set_mutex);

	m = FUNC3(pmap->pm_l0_paddr);
	FUNC8(m);
	FUNC7(m);
}
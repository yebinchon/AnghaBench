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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {scalar_t__ pm_type; int /*<<< orphan*/  pm_pkru; int /*<<< orphan*/ * pm_pml4u; scalar_t__* pm_pml4; int /*<<< orphan*/  pm_active; int /*<<< orphan*/  pm_root; TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int CPUID_STDEXT2_PKU ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DMPML4I ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int KPML4BASE ; 
 int LMSPML4I ; 
 int NKPML4E ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t PML4PML4I ; 
 scalar_t__ PT_X86 ; 
 int cpu_stdext_feature2 ; 
 int lm_ents ; 
 int ndmpdpphys ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(pmap_t pmap)
{
	vm_page_t m;
	int i;

	FUNC2(pmap->pm_stats.resident_count == 0,
	    ("pmap_release: pmap resident count %ld != 0",
	    pmap->pm_stats.resident_count));
	FUNC2(FUNC8(&pmap->pm_root),
	    ("pmap_release: pmap has reserved page table page(s)"));
	FUNC2(FUNC0(&pmap->pm_active),
	    ("releasing active pmap %p", pmap));

	m = FUNC3(FUNC1((vm_offset_t)pmap->pm_pml4));

	for (i = 0; i < NKPML4E; i++)	/* KVA */
		pmap->pm_pml4[KPML4BASE + i] = 0;
	for (i = 0; i < ndmpdpphys; i++)/* Direct Map */
		pmap->pm_pml4[DMPML4I + i] = 0;
	pmap->pm_pml4[PML4PML4I] = 0;	/* Recursive Mapping */
	for (i = 0; i < lm_ents; i++)	/* Large Map */
		pmap->pm_pml4[LMSPML4I + i] = 0;

	FUNC7(m);
	FUNC6(m);

	if (pmap->pm_pml4u != NULL) {
		m = FUNC3(FUNC1((vm_offset_t)pmap->pm_pml4u));
		FUNC7(m);
		FUNC5(m);
	}
	if (pmap->pm_type == PT_X86 &&
	    (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0)
		FUNC4(&pmap->pm_pkru);
}
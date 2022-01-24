#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_9__ {scalar_t__ wired_count; } ;
struct TYPE_10__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int NBPDP ; 
 int NBPDR ; 
 int NBPML4 ; 
 int PAGE_SIZE ; 
 int PDPMASK ; 
 int PDRMASK ; 
 int PG_PS ; 
 int PG_W ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int PML4MASK ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*,int) ; 
 int* FUNC5 (int*,int) ; 
 int* FUNC6 (int*,int) ; 
 int* FUNC7 (TYPE_2__*,int) ; 
 int* FUNC8 (int*,int) ; 
 int FUNC9 (TYPE_2__*) ; 

void
FUNC10(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
	vm_offset_t va_next;
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t *pde;
	pt_entry_t *pte, PG_V;

	PG_V = FUNC9(pmap);
	FUNC0(pmap);
	for (; sva < eva; sva = va_next) {
		pml4e = FUNC7(pmap, sva);
		if ((*pml4e & PG_V) == 0) {
			va_next = (sva + NBPML4) & ~PML4MASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
		pdpe = FUNC8(pml4e, sva);
		if ((*pdpe & PG_V) == 0) {
			va_next = (sva + NBPDP) & ~PDPMASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
		va_next = (sva + NBPDR) & ~PDRMASK;
		if (va_next < sva)
			va_next = eva;
		pde = FUNC6(pdpe, sva);
		if ((*pde & PG_V) == 0)
			continue;
		if ((*pde & PG_PS) != 0) {
			if ((*pde & PG_W) == 0)
				FUNC3("pmap_unwire: pde %#jx is missing PG_W",
				    (uintmax_t)*pde);

			/*
			 * Are we unwiring the entire large page?  If not,
			 * demote the mapping and fall through.
			 */
			if (sva + NBPDR == va_next && eva >= va_next) {
				FUNC2(pde, PG_W);
				pmap->pm_stats.wired_count -= NBPDR /
				    PAGE_SIZE;
				continue;
			} else if (!FUNC4(pmap, pde, sva))
				FUNC3("pmap_unwire: demotion failed");
		}
		if (va_next > eva)
			va_next = eva;
		for (pte = FUNC5(pde, sva); sva != va_next; pte++,
		    sva += PAGE_SIZE) {
			if ((*pte & PG_V) == 0)
				continue;
			if ((*pte & PG_W) == 0)
				FUNC3("pmap_unwire: pte %#jx is missing PG_W",
				    (uintmax_t)*pte);

			/*
			 * PG_W must be cleared atomically.  Although the pmap
			 * lock synchronizes access to PG_W, another processor
			 * could be setting PG_M and/or PG_A concurrently.
			 */
			FUNC2(pte, PG_W);
			pmap->pm_stats.wired_count--;
		}
	}
	FUNC1(pmap);
}
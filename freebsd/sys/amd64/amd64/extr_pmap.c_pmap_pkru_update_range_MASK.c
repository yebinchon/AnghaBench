#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  scalar_t__ u_int ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_7__ {scalar_t__ pm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NBPDP ; 
 int NBPDR ; 
 int NBPML4 ; 
 scalar_t__ PAGE_SIZE ; 
 int PDPMASK ; 
 int PDRMASK ; 
 int PG_PS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_MAX_PKRU_IDX ; 
 int PML4MASK ; 
 scalar_t__ PT_X86 ; 
 int FUNC2 (scalar_t__) ; 
 int X86_PG_PKU_MASK ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int* FUNC5 (int*,int) ; 
 int* FUNC6 (int*,int) ; 
 int* FUNC7 (TYPE_1__*,int) ; 
 int* FUNC8 (int*,int) ; 

__attribute__((used)) static void
FUNC9(pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    u_int keyidx)
{
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t newpde, ptpaddr, *pde;
	pt_entry_t newpte, *ptep, pte;
	vm_offset_t va, va_next;
	bool changed;

	FUNC1(pmap, MA_OWNED);
	FUNC0(pmap->pm_type == PT_X86);
	FUNC0(keyidx <= PMAP_MAX_PKRU_IDX);

	for (changed = false, va = sva; va < eva; va = va_next) {
		pml4e = FUNC7(pmap, va);
		if ((*pml4e & X86_PG_V) == 0) {
			va_next = (va + NBPML4) & ~PML4MASK;
			if (va_next < va)
				va_next = eva;
			continue;
		}

		pdpe = FUNC8(pml4e, va);
		if ((*pdpe & X86_PG_V) == 0) {
			va_next = (va + NBPDP) & ~PDPMASK;
			if (va_next < va)
				va_next = eva;
			continue;
		}

		va_next = (va + NBPDR) & ~PDRMASK;
		if (va_next < va)
			va_next = eva;

		pde = FUNC6(pdpe, va);
		ptpaddr = *pde;
		if (ptpaddr == 0)
			continue;

		FUNC0((ptpaddr & X86_PG_V) != 0);
		if ((ptpaddr & PG_PS) != 0) {
			if (va + NBPDR == va_next && eva >= va_next) {
				newpde = (ptpaddr & ~X86_PG_PKU_MASK) |
				    FUNC2(keyidx);
				if (newpde != ptpaddr) {
					*pde = newpde;
					changed = true;
				}
				continue;
			} else if (!FUNC3(pmap, pde, va)) {
				continue;
			}
		}

		if (va_next > eva)
			va_next = eva;

		for (ptep = FUNC5(pde, va); va != va_next;
		    ptep++, va += PAGE_SIZE) {
			pte = *ptep;
			if ((pte & X86_PG_V) == 0)
				continue;
			newpte = (pte & ~X86_PG_PKU_MASK) | FUNC2(keyidx);
			if (newpte != pte) {
				*ptep = newpte;
				changed = true;
			}
		}
	}
	if (changed)
		FUNC4(pmap, sva, eva);
}
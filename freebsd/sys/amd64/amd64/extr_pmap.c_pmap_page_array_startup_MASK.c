#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_page_t ;
typedef  int vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct vm_page {int dummy; } ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int NBPDR ; 
 int NPDEPG ; 
 int PAGE_SIZE ; 
 int PG_PS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int X86_PG_A ; 
 int X86_PG_M ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ first_page ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int pg_g ; 
 int pg_nx ; 
 int* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int* FUNC7 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (long) ; 
 scalar_t__ vm_page_array ; 
 long vm_page_array_size ; 
 int FUNC9 (int,int) ; 

void
FUNC10(long pages)
{
	pdp_entry_t *pdpe;
	pd_entry_t *pde, newpdir;
	vm_offset_t va, start, end;
	vm_paddr_t pa;
	long pfn;
	int domain, i;

	vm_page_array_size = pages;

	start = VM_MIN_KERNEL_ADDRESS;
	end = start + pages * sizeof(struct vm_page);
	for (va = start; va < end; va += NBPDR) {
		pfn = first_page + (va - start) / sizeof(struct vm_page);
		domain = FUNC1(FUNC8(pfn));
		pdpe = FUNC6(kernel_pmap, va);
		if ((*pdpe & X86_PG_V) == 0) {
			pa = FUNC9(domain, PAGE_SIZE);
			FUNC2(pa);
			FUNC3((void *)FUNC0(pa));
			*pdpe = (pdp_entry_t)(pa | X86_PG_V | X86_PG_RW |
			    X86_PG_A | X86_PG_M);
		}
		pde = FUNC7(pdpe, va);
		if ((*pde & X86_PG_V) != 0)
			FUNC4("Unexpected pde");
		pa = FUNC9(domain, NBPDR);
		for (i = 0; i < NPDEPG; i++)
			FUNC2(pa + i * PAGE_SIZE);
		newpdir = (pd_entry_t)(pa | X86_PG_V | X86_PG_RW | X86_PG_A |
		    X86_PG_M | PG_PS | pg_g | pg_nx);
		FUNC5(pde, newpdir);
	}
	vm_page_array = (vm_page_t)start;
}
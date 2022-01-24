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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int pt_entry_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int AMDID_PAGE1GB ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_MASK ; 
 int PDPMASK ; 
 int PDRMASK ; 
 int PG_FRAME ; 
 int PG_PS_FRAME ; 
 int PG_PS_PDP_FRAME ; 
 int FUNC1 (int) ; 
 int X86_PG_PS ; 
 int X86_PG_V ; 
 int amd_feature ; 
 int* FUNC2 (int) ; 
 int* FUNC3 (int*,int) ; 
 int* FUNC4 (int*,int) ; 

__attribute__((used)) static vm_paddr_t
FUNC5(vm_offset_t va)
{
	pdp_entry_t *pdpe, pdp;
	pd_entry_t *pde, pd;
	pt_entry_t *pte, pt;

	FUNC0(FUNC1(va),
	    ("not largemap range %#lx", (u_long)va));
	pdpe = FUNC2(va);
	pdp = *pdpe;
	FUNC0((pdp & X86_PG_V) != 0,
	    ("invalid pdp va %#lx pdpe %#lx pdp %#lx", va,
	    (u_long)pdpe, pdp));
	if ((pdp & X86_PG_PS) != 0) {
		FUNC0((amd_feature & AMDID_PAGE1GB) != 0,
		    ("no 1G pages, va %#lx pdpe %#lx pdp %#lx", va,
		    (u_long)pdpe, pdp));
		return ((pdp & PG_PS_PDP_FRAME) | (va & PDPMASK));
	}
	pde = FUNC4(pdpe, va);
	pd = *pde;
	FUNC0((pd & X86_PG_V) != 0,
	    ("invalid pd va %#lx pde %#lx pd %#lx", va, (u_long)pde, pd));
	if ((pd & X86_PG_PS) != 0)
		return ((pd & PG_PS_FRAME) | (va & PDRMASK));
	pte = FUNC3(pde, va);
	pt = *pte;
	FUNC0((pt & X86_PG_V) != 0,
	    ("invalid pte va %#lx pte %#lx pt %#lx", va, (u_long)pte, pt));
	return ((pt & PG_FRAME) | (va & PAGE_MASK));
}
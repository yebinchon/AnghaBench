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
typedef  int vm_size_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NBPDP ; 
 int NBPDR ; 
 int PG_PS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int X86_PG_V ; 
 int dmaplimit ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC9 (int*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

void
FUNC11(vm_paddr_t base, vm_size_t len, boolean_t invalidate)
{
	pdp_entry_t *pdpe;
	pd_entry_t *pde;
	vm_offset_t va;
	boolean_t changed;

	if (len == 0)
		return;
	FUNC0(FUNC10(len), ("pmap_demote_DMAP: len is not a power of 2"));
	FUNC0((base & (len - 1)) == 0,
	    ("pmap_demote_DMAP: base is not a multiple of len"));
	if (len < NBPDP && base < dmaplimit) {
		va = FUNC1(base);
		changed = FALSE;
		FUNC2(kernel_pmap);
		pdpe = FUNC8(kernel_pmap, va);
		if ((*pdpe & X86_PG_V) == 0)
			FUNC4("pmap_demote_DMAP: invalid PDPE");
		if ((*pdpe & PG_PS) != 0) {
			if (!FUNC6(kernel_pmap, pdpe, va))
				FUNC4("pmap_demote_DMAP: PDPE failed");
			changed = TRUE;
		}
		if (len < NBPDR) {
			pde = FUNC9(pdpe, va);
			if ((*pde & X86_PG_V) == 0)
				FUNC4("pmap_demote_DMAP: invalid PDE");
			if ((*pde & PG_PS) != 0) {
				if (!FUNC5(kernel_pmap, pde, va))
					FUNC4("pmap_demote_DMAP: PDE failed");
				changed = TRUE;
			}
		}
		if (changed && invalidate)
			FUNC7(kernel_pmap, va);
		FUNC3(kernel_pmap);
	}
}
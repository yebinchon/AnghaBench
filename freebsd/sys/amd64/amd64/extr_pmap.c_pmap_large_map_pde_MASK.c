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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pdp_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PG_FRAME ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int X86_PG_A ; 
 int X86_PG_PS ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int pg_nx ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pd_entry_t *
FUNC6(vm_offset_t va)
{
	pdp_entry_t *pdpe;
	vm_page_t m;
	vm_paddr_t mphys;

retry:
	pdpe = FUNC4(va);
	if (*pdpe == 0) {
		m = FUNC3();
		if (m == NULL)
			goto retry;
		mphys = FUNC2(m);
		*pdpe = mphys | X86_PG_A | X86_PG_RW | X86_PG_V | pg_nx;
	} else {
		FUNC0((*pdpe & X86_PG_PS) == 0);
		mphys = *pdpe & PG_FRAME;
	}
	return ((pd_entry_t *)FUNC1(mphys) + FUNC5(va));
}
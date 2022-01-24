#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_2__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PG_FRAME ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int X86_PG_A ; 
 int X86_PG_PS ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int pg_nx ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pt_entry_t *
FUNC8(vm_offset_t va)
{
	pd_entry_t *pde;
	vm_page_t m;
	vm_paddr_t mphys;

retry:
	pde = FUNC6(va);
	if (*pde == 0) {
		m = FUNC5();
		if (m == NULL)
			goto retry;
		mphys = FUNC4(m);
		*pde = mphys | X86_PG_A | X86_PG_RW | X86_PG_V | pg_nx;
		FUNC3(FUNC0((uintptr_t)pde))->ref_count++;
	} else {
		FUNC1((*pde & X86_PG_PS) == 0);
		mphys = *pde & PG_FRAME;
	}
	return ((pt_entry_t *)FUNC2(mphys) + FUNC7(va));
}
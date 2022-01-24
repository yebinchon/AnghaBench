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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int X86_PG_A ; 
 int X86_PG_G ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int pg_nx ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  pti_finalized ; 
 int /*<<< orphan*/  pti_obj ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(vm_offset_t sva, vm_offset_t eva, bool exec)
{
	vm_paddr_t pa;
	pd_entry_t *pde;
	pt_entry_t *pte, ptev;
	bool unwire_pde;

	FUNC2(pti_obj);

	sva = FUNC11(sva);
	FUNC1(sva > VM_MAXUSER_ADDRESS);
	eva = FUNC10(eva);
	FUNC1(sva < eva);
	for (; sva < eva; sva += PAGE_SIZE) {
		pte = FUNC6(sva, &unwire_pde);
		pa = FUNC4(sva);
		ptev = pa | X86_PG_RW | X86_PG_V | X86_PG_A | X86_PG_G |
		    (exec ? 0 : pg_nx) | FUNC3(kernel_pmap,
		    VM_MEMATTR_DEFAULT, FALSE);
		if (*pte == 0) {
			FUNC9(pte, ptev);
			FUNC8(pte);
		} else {
			FUNC0(!pti_finalized,
			    ("pti overlap after fin %#lx %#lx %#lx",
			    sva, *pte, ptev));
			FUNC0(*pte == ptev,
			    ("pti non-identical pte after fin %#lx %#lx %#lx",
			    sva, *pte, ptev));
		}
		if (unwire_pde) {
			pde = FUNC5(sva);
			FUNC7(pde, true);
		}
	}
}
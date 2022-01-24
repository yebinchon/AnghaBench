#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_4__ {scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int X86_PG_A ; 
 int X86_PG_M ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ workaround_erratum383 ; 

__attribute__((used)) static void
FUNC11(pmap_t pmap, pd_entry_t *pde, vm_offset_t va)
{
	pd_entry_t newpde;
	vm_paddr_t mptepa;
	vm_page_t mpte;

	FUNC0(pmap == kernel_pmap, ("pmap %p is not kernel_pmap", pmap));
	FUNC2(pmap, MA_OWNED);
	mpte = FUNC8(pmap, va);
	if (mpte == NULL)
		FUNC5("pmap_remove_kernel_pde: Missing pt page.");

	mptepa = FUNC3(mpte);
	newpde = mptepa | X86_PG_M | X86_PG_A | X86_PG_RW | X86_PG_V;

	/*
	 * If this page table page was unmapped by a promotion, then it
	 * contains valid mappings.  Zero it to invalidate those mappings.
	 */
	if (mpte->valid != 0)
		FUNC4((void *)FUNC1(mptepa));

	/*
	 * Demote the mapping.
	 */
	if (workaround_erratum383)
		FUNC9(pmap, va, pde, newpde);
	else
		FUNC6(pde, newpde);

	/*
	 * Invalidate a stale recursive mapping of the page table page.
	 */
	FUNC7(pmap, (vm_offset_t)FUNC10(va));
}
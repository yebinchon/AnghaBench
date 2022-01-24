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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;
typedef  scalar_t__ pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PMAP_ENTER_NORECLAIM ; 
 int PMAP_ENTER_NOREPLACE ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE1_NG ; 
 int PTE1_NM ; 
 int /*<<< orphan*/  PTE1_NX ; 
 int PTE1_RO ; 
 int /*<<< orphan*/  PTE1_U ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PROT_EXECUTE ; 
 scalar_t__ kernel_pmap ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{
	pt1_entry_t pte1;
	vm_paddr_t pa;

	FUNC1(pmap, MA_OWNED);
	pa = FUNC3(m);
	pte1 = FUNC2(pa, PTE1_NM | PTE1_RO, FUNC0(FUNC5(m)));
	if ((prot & VM_PROT_EXECUTE) == 0)
		pte1 |= PTE1_NX;
	if (va < VM_MAXUSER_ADDRESS)
		pte1 |= PTE1_U;
	if (pmap != kernel_pmap)
		pte1 |= PTE1_NG;
	return (FUNC4(pmap, va, pte1, PMAP_ENTER_NOSLEEP |
	    PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, m) == KERN_SUCCESS);
}
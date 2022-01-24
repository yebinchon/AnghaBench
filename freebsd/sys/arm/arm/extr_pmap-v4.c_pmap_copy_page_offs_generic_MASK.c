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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int L2_S_PROTO ; 
 int /*<<< orphan*/  PTE_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int* cdst_pte ; 
 int cdstp ; 
 int /*<<< orphan*/  cmtx ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int* csrc_pte ; 
 int csrcp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int pte_l2_s_cache_mode ; 

void
FUNC11(vm_paddr_t a_phys, vm_offset_t a_offs,
    vm_paddr_t b_phys, vm_offset_t b_offs, int cnt)
{

	FUNC9(&cmtx);
	*csrc_pte = L2_S_PROTO | a_phys |
	    FUNC0(PTE_KERNEL, VM_PROT_READ) | pte_l2_s_cache_mode;
	FUNC1(csrc_pte);
	*cdst_pte = L2_S_PROTO | b_phys |
	    FUNC0(PTE_KERNEL, VM_PROT_WRITE) | pte_l2_s_cache_mode;
	FUNC1(cdst_pte);
	FUNC8(csrcp);
	FUNC8(cdstp);
	FUNC3();
	FUNC2((char *)csrcp + a_offs, (char *)cdstp + b_offs, cnt);
	FUNC10(&cmtx);
	FUNC4(csrcp + a_offs, cnt);
	FUNC5(cdstp + b_offs, cnt);
	FUNC6(csrcp + a_offs, cnt);
	FUNC7(cdstp + b_offs, cnt);
}
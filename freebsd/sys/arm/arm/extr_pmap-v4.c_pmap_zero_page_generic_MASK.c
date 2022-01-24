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

/* Variables and functions */
 int /*<<< orphan*/  IS_PHYSICAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int L2_S_PROTO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PTE_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 scalar_t__ FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int _min_bzero_size ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int* cdst_pte ; 
 scalar_t__ cdstp ; 
 int /*<<< orphan*/  cmtx ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(vm_paddr_t phys, int off, int size)
{

	if (&_arm_bzero && size >= _min_bzero_size &&
	    FUNC2((void *)(phys + off), size, IS_PHYSICAL) == 0)
		return;

	FUNC7(&cmtx);
	/*
	 * Hook in the page, zero it, invalidate the TLB as needed.
	 *
	 * Note the temporary zero-page mapping must be a non-cached page in
	 * order to work without corruption when write-allocate is enabled.
	 */
	*cdst_pte = L2_S_PROTO | phys | FUNC0(PTE_KERNEL, VM_PROT_WRITE);
	FUNC1(cdst_pte);
	FUNC6(cdstp);
	FUNC5();
	if (off || size != PAGE_SIZE)
		FUNC3((void *)(cdstp + off), size);
	else
		FUNC4(cdstp);

	FUNC8(&cmtx);
}
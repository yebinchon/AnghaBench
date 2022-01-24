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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int vm_prot_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  pt2_entry_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__) ; 
 int PTE1_OFFSET ; 
 scalar_t__ PTE1_SIZE ; 
 scalar_t__ PTE2_AP_KR ; 
 scalar_t__ PTE2_AP_KRW ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ PTE2_NX ; 
 scalar_t__ PTE2_X ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(vm_paddr_t pa, vm_offset_t va, vm_size_t size,
    vm_prot_t prot, vm_memattr_t attr)
{
	u_int num;
	u_int l1_attr, l1_prot, l2_prot, l2_attr;
	pt1_entry_t *pte1p;
	pt2_entry_t *pte2p;

	l2_prot = prot & VM_PROT_WRITE ? PTE2_AP_KRW : PTE2_AP_KR;
	l2_prot |= (prot & VM_PROT_EXECUTE) ? PTE2_X : PTE2_NX;
	l2_attr = FUNC8(attr);
	l1_prot = FUNC0(l2_prot);
	l1_attr = FUNC0(l2_attr);

	/* Map all the pages. */
	num = FUNC7(size);
	while (num > 0) {
		if ((((va | pa) & PTE1_OFFSET) == 0) && (num >= PTE1_SIZE)) {
			pte1p = FUNC3(va);
			FUNC5(pte1p, FUNC1(pa, l1_prot, l1_attr));
			va += PTE1_SIZE;
			pa += PTE1_SIZE;
			num -= PTE1_SIZE;
		} else {
			pte2p = FUNC4(va);
			FUNC6(pte2p, FUNC2(pa, l2_prot, l2_attr));
			va += PAGE_SIZE;
			pa += PAGE_SIZE;
			num -= PAGE_SIZE;
		}
	}
}
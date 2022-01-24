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
typedef  int pt2_entry_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PTE1_OFFSET ; 
 int PTE2_V ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 

vm_paddr_t
FUNC9(vm_offset_t va, pt2_entry_t *pte2p)
{
	vm_paddr_t pa;
	pt1_entry_t pte1;
	pt2_entry_t pte2;

	pte1 = FUNC5(FUNC1(va));
	if (FUNC4(pte1)) {
		pa = FUNC6(pte1) | (va & PTE1_OFFSET);
		pte2 = pa | FUNC0(pte1) | PTE2_V;
	} else if (FUNC3(pte1)) {
		pte2 = FUNC7(FUNC2(va));
		pa = FUNC8(pte2);
	} else {
		pte2 = 0;
		pa = 0;
	}
	if (pte2p != NULL)
		*pte2p = pte2;
	return (pa);
}
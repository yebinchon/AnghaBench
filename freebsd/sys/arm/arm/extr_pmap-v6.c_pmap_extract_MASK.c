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
typedef  int /*<<< orphan*/  pt2_entry_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PTE1_OFFSET ; 
 int PTE2_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

vm_paddr_t
FUNC11(pmap_t pmap, vm_offset_t va)
{
	vm_paddr_t pa;
	pt1_entry_t pte1;
	pt2_entry_t *pte2p;

	FUNC0(pmap);
	pte1 = FUNC7(FUNC2(pmap, va));
	if (FUNC6(pte1))
		pa = FUNC8(pte1) | (va & PTE1_OFFSET);
	else if (FUNC5(pte1)) {
		pte2p = FUNC3(pmap, va);
		pa = FUNC10(FUNC9(pte2p)) | (va & PTE2_OFFSET);
		FUNC4(pte2p);
	} else
		pa = 0;
	FUNC1(pmap);
	return (pa);
}
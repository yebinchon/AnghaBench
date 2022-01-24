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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint64_t ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int PG_PS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(pmap_t pmap, vm_offset_t va, uint64_t *ptr, int *num)
{
	pml4_entry_t *pml4;
	pdp_entry_t *pdp;
	pd_entry_t *pde;
	pt_entry_t *pte, PG_V;
	int idx;

	idx = 0;
	PG_V = FUNC6(pmap);
	FUNC0(pmap);

	pml4 = FUNC4(pmap, va);
	ptr[idx++] = *pml4;
	if ((*pml4 & PG_V) == 0)
		goto done;

	pdp = FUNC5(pml4, va);
	ptr[idx++] = *pdp;
	if ((*pdp & PG_V) == 0 || (*pdp & PG_PS) != 0)
		goto done;

	pde = FUNC3(pdp, va);
	ptr[idx++] = *pde;
	if ((*pde & PG_V) == 0 || (*pde & PG_PS) != 0)
		goto done;

	pte = FUNC2(pde, va);
	ptr[idx++] = *pte;

done:
	FUNC1(pmap);
	*num = idx;
}
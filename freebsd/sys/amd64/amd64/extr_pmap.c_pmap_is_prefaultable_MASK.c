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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int PG_PS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC5(pmap_t pmap, vm_offset_t addr)
{
	pd_entry_t *pde;
	pt_entry_t *pte, PG_V;
	boolean_t rv;

	PG_V = FUNC4(pmap);
	rv = FALSE;
	FUNC0(pmap);
	pde = FUNC2(pmap, addr);
	if (pde != NULL && (*pde & (PG_PS | PG_V)) == PG_V) {
		pte = FUNC3(pde, addr);
		rv = (*pte & PG_V) == 0;
	}
	FUNC1(pmap);
	return (rv);
}
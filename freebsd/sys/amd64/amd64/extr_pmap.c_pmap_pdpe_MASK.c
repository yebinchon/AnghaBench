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
typedef  int pml4_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  pdp_entry_t ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline pdp_entry_t *
FUNC3(pmap_t pmap, vm_offset_t va)
{
	pml4_entry_t *pml4e;
	pt_entry_t PG_V;

	PG_V = FUNC2(pmap);
	pml4e = FUNC0(pmap, va);
	if ((*pml4e & PG_V) == 0)
		return (NULL);
	return (FUNC1(pml4e, va));
}
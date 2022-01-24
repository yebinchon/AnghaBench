#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_pindex_t ;
typedef  int vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  pdp_entry_t ;
struct TYPE_2__ {int* pm_pml4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t LMSPML4I ; 
 int PG_FRAME ; 
 scalar_t__ FUNC1 (int) ; 
 int X86_PG_V ; 
 TYPE_1__* kernel_pmap ; 
 size_t lm_ents ; 
 int FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 

__attribute__((used)) static pdp_entry_t *
FUNC4(vm_offset_t va)
{
	vm_pindex_t pml4_idx;
	vm_paddr_t mphys;

	pml4_idx = FUNC3(va);
	FUNC0(LMSPML4I <= pml4_idx && pml4_idx < LMSPML4I + lm_ents,
	    ("pmap_large_map_pdpe: va %#jx out of range idx %#jx LMSPML4I "
	    "%#jx lm_ents %d",
	    (uintmax_t)va, (uintmax_t)pml4_idx, LMSPML4I, lm_ents));
	FUNC0((kernel_pmap->pm_pml4[pml4_idx] & X86_PG_V) != 0,
	    ("pmap_large_map_pdpe: invalid pml4 for va %#jx idx %#jx "
	    "LMSPML4I %#jx lm_ents %d",
	    (uintmax_t)va, (uintmax_t)pml4_idx, LMSPML4I, lm_ents));
	mphys = kernel_pmap->pm_pml4[pml4_idx] & PG_FRAME;
	return ((pdp_entry_t *)FUNC1(mphys) + FUNC2(va));
}
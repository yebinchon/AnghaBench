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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 int KENTER_CACHE ; 
 int KENTER_USER ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(vm_offset_t va, vm_paddr_t pa)
{

	FUNC1(va, pa, KENTER_CACHE|KENTER_USER);
	/*
	 * Call pmap_fault_fixup now, to make sure we'll have no exception
	 * at the first use of the new address, or bad things will happen,
	 * as we use one of these addresses in the exception handlers.
	 */
	FUNC0(kernel_pmap, va, VM_PROT_READ|VM_PROT_WRITE, 1);
}
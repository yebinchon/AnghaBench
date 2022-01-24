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
typedef  int vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  int vm_offset_t ;

/* Variables and functions */
 int BUSDMA_DCACHE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(vm_offset_t va, vm_paddr_t pa, vm_size_t size)
{
	/*
	 * Write back any partial cachelines immediately before and
	 * after the DMA region.  We don't need to round the address
	 * down to the nearest cacheline or specify the exact size,
	 * as dcache_wb_poc() will do the rounding for us and works
	 * at cacheline granularity.
	 */
	if (va & BUSDMA_DCACHE_MASK)
		FUNC1(va, pa, 1);
	if ((va + size) & BUSDMA_DCACHE_MASK)
		FUNC1(va + size, pa + size, 1);

	FUNC0(va, pa, size);
}
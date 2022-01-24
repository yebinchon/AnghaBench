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

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int PG_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC4(vm_paddr_t pa, int offset, vm_offset_t length)
{
	vm_offset_t va, off;
	void *data;

	off = pa & PAGE_MASK;
	length = FUNC3(length + off);
	pa = pa & PG_FRAME;
	va = (vm_offset_t)FUNC2(pa, offset) +
	    (offset * PAGE_SIZE);
	data = (void *)(va + off);
	length -= PAGE_SIZE;
	while (length > 0) {
		va += PAGE_SIZE;
		pa += PAGE_SIZE;
		length -= PAGE_SIZE;
		FUNC1(va, pa);
		FUNC0(va);
	}
	return (data);
}
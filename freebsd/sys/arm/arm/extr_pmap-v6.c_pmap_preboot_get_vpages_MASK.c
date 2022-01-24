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
typedef  int vm_offset_t ;
typedef  int u_int ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int virtual_avail ; 

vm_offset_t
FUNC3(u_int num)
{
	vm_paddr_t  pa;
	vm_offset_t va;

	/* Allocate physical page(s). */
	pa = FUNC1(num);

	/* Allocate virtual space. */
	va = virtual_avail;
	virtual_avail += num * PAGE_SIZE;

	/* Map and zero all. */
	FUNC2(pa, va, num);
	FUNC0((void *)va, num * PAGE_SIZE);

	return (va);
}
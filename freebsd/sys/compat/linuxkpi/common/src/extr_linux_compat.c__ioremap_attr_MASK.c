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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned long) ; 

void *
FUNC2(vm_paddr_t phys_addr, unsigned long size, int attr)
{
	void *addr;

	addr = FUNC0(phys_addr, size, attr);
	if (addr == NULL)
		return (NULL);
	FUNC1(addr, size);

	return (addr);
}
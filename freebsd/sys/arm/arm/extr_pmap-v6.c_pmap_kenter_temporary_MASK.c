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
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ crashdumpmap ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void *
FUNC2(vm_paddr_t pa, int i)
{
	vm_offset_t va;

	/* QQQ: 'i' should be less or equal to MAXDUMPPGS. */

	va = (vm_offset_t)crashdumpmap + (i * PAGE_SIZE);
	FUNC0(va, pa);
	FUNC1(va);
	return ((void *)crashdumpmap);
}
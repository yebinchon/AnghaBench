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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 scalar_t__ L1_S_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ kernel_vm_end ; 
 scalar_t__ pmap_curmaxkvaddr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC5(vm_offset_t addr)
{
	pmap_t kpm = kernel_pmap;

	if (addr <= pmap_curmaxkvaddr)
		return;		/* we are OK */

	/*
	 * whoops!   we need to add kernel PTPs
	 */

	/* Map 1MB at a time */
	for (; pmap_curmaxkvaddr < addr; pmap_curmaxkvaddr += L1_S_SIZE)
		FUNC4(kpm, pmap_curmaxkvaddr);

	/*
	 * flush out the cache, expensive but growkernel will happen so
	 * rarely
	 */
	FUNC1();
	FUNC2();
	FUNC3();
	FUNC0();
	kernel_vm_end = pmap_curmaxkvaddr;
}
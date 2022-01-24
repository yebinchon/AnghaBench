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

/* Variables and functions */
 int CPUID_STDEXT_CLWB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ cpu_clflush_line_size ; 
 int cpu_stdext_feature ; 
 scalar_t__ lapic_paddr ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5(vm_offset_t sva, vm_offset_t eva)
{

	FUNC3(sva, eva);

	if ((cpu_stdext_feature & CPUID_STDEXT_CLWB) == 0) {
		FUNC2(sva, eva);
		return;
	}

	/* See comment in pmap_force_invalidate_cache_range(). */
	if (FUNC4(sva) == lapic_paddr)
		return;

	FUNC0();
	for (; sva < eva; sva += cpu_clflush_line_size)
		FUNC1(sva);
	FUNC0();
}
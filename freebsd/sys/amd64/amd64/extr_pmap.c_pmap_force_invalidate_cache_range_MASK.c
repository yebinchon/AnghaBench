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
 int CPUID_STDEXT_CLFLUSHOPT ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int cpu_clflush_line_size ; 
 int cpu_stdext_feature ; 
 scalar_t__ cpu_vendor_id ; 
 scalar_t__ lapic_paddr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5(vm_offset_t sva, vm_offset_t eva)
{

	sva &= ~(vm_offset_t)(cpu_clflush_line_size - 1);

	/*
	 * XXX: Some CPUs fault, hang, or trash the local APIC
	 * registers if we use CLFLUSH on the local APIC range.  The
	 * local APIC is always uncached, so we don't need to flush
	 * for that range anyway.
	 */
	if (FUNC4(sva) == lapic_paddr)
		return;

	if ((cpu_stdext_feature & CPUID_STDEXT_CLFLUSHOPT) != 0) {
		/*
		 * Do per-cache line flush.  Use a locked
		 * instruction to insure that previous stores are
		 * included in the write-back.  The processor
		 * propagates flush to other processors in the cache
		 * coherence domain.
		 */
		FUNC0();
		for (; sva < eva; sva += cpu_clflush_line_size)
			FUNC2(sva);
		FUNC0();
	} else {
		/*
		 * Writes are ordered by CLFLUSH on Intel CPUs.
		 */
		if (cpu_vendor_id != CPU_VENDOR_INTEL)
			FUNC3();
		for (; sva < eva; sva += cpu_clflush_line_size)
			FUNC1(sva);
		if (cpu_vendor_id != CPU_VENDOR_INTEL)
			FUNC3();
	}
}
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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int CPUID_CLFSH ; 
 int CPUID_STDEXT_CLFLUSHOPT ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PMAP_CLFLUSH_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ cpu_clflush_line_size ; 
 int cpu_feature ; 
 int cpu_stdext_feature ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(vm_page_t *pages, int count)
{
	vm_offset_t daddr, eva;
	int i;
	bool useclflushopt;

	useclflushopt = (cpu_stdext_feature & CPUID_STDEXT_CLFLUSHOPT) != 0;
	if (count >= PMAP_CLFLUSH_THRESHOLD / PAGE_SIZE ||
	    ((cpu_feature & CPUID_CLFSH) == 0 && !useclflushopt))
		FUNC6();
	else {
		if (useclflushopt)
			FUNC2();
		else if (cpu_vendor_id != CPU_VENDOR_INTEL)
			FUNC5();
		for (i = 0; i < count; i++) {
			daddr = FUNC0(FUNC1(pages[i]));
			eva = daddr + PAGE_SIZE;
			for (; daddr < eva; daddr += cpu_clflush_line_size) {
				if (useclflushopt)
					FUNC4(daddr);
				else
					FUNC3(daddr);
			}
		}
		if (useclflushopt)
			FUNC2();
		else if (cpu_vendor_id != CPU_VENDOR_INTEL)
			FUNC5();
	}
}
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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int AMDID_NX ; 
 int AMDID_RDTSCP ; 
 int CPUID_FXSR ; 
 int CPUID_STDEXT2_PKU ; 
 int CPUID_STDEXT2_RDPID ; 
 int CPUID_STDEXT_FSGSBASE ; 
 int CPUID_STDEXT_SMAP ; 
 int CPUID_STDEXT_SMEP ; 
 int CPUID_XMM ; 
#define  CPU_VENDOR_AMD 129 
#define  CPU_VENDOR_CENTAUR 128 
 int CR4_FSGSBASE ; 
 int CR4_FXSR ; 
 int CR4_PKE ; 
 int CR4_SMAP ; 
 int CR4_SMEP ; 
 int CR4_XMM ; 
 int EFER_NXE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  MSR_TSC_AUX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_NX ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int amd_feature ; 
 int cpu_feature ; 
 int cpu_fxsr ; 
 int cpu_stdext_feature ; 
 int cpu_stdext_feature2 ; 
 int cpu_vendor_id ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int hw_instruction_sse ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  pg_nx ; 
 int FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void
FUNC11(void)
{
	uint64_t msr;
	uint32_t cr4;

	cr4 = FUNC8();
	if ((cpu_feature & CPUID_XMM) && (cpu_feature & CPUID_FXSR)) {
		cr4 |= CR4_FXSR | CR4_XMM;
		cpu_fxsr = hw_instruction_sse = 1;
	}
	if (cpu_stdext_feature & CPUID_STDEXT_FSGSBASE)
		cr4 |= CR4_FSGSBASE;

	if (cpu_stdext_feature2 & CPUID_STDEXT2_PKU)
		cr4 |= CR4_PKE;

	/*
	 * Postpone enabling the SMEP on the boot CPU until the page
	 * tables are switched from the boot loader identity mapping
	 * to the kernel tables.  The boot loader enables the U bit in
	 * its tables.
	 */
	if (!FUNC0()) {
		if (cpu_stdext_feature & CPUID_STDEXT_SMEP)
			cr4 |= CR4_SMEP;
		if (cpu_stdext_feature & CPUID_STDEXT_SMAP)
			cr4 |= CR4_SMAP;
	}
	FUNC7(cr4);
	if (FUNC0() && (amd_feature & AMDID_NX) != 0) {
		msr = FUNC9(MSR_EFER) | EFER_NXE;
		FUNC10(MSR_EFER, msr);
		pg_nx = PG_NX;
	}
	FUNC3();
	FUNC4(false);
	FUNC2();
	switch (cpu_vendor_id) {
	case CPU_VENDOR_AMD:
		FUNC5();
		break;
	case CPU_VENDOR_CENTAUR:
		FUNC6();
		break;
	}

	if ((amd_feature & AMDID_RDTSCP) != 0 ||
	    (cpu_stdext_feature2 & CPUID_STDEXT2_RDPID) != 0)
		FUNC10(MSR_TSC_AUX, FUNC1(cpuid));
}
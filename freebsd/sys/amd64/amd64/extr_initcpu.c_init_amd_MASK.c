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

/* Variables and functions */
 int CPUID2_HV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MSR_LS_CFG ; 
 int MSR_NB_CFG1 ; 
 int cpu_feature2 ; 
 int /*<<< orphan*/  cpu_id ; 
 int hw_lower_amd64_sharedpage ; 
 int lower_sharedpage_init ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	uint64_t msr;

	/*
	 * Work around Erratum 721 for Family 10h and 12h processors.
	 * These processors may incorrectly update the stack pointer
	 * after a long series of push and/or near-call instructions,
	 * or a long series of pop and/or near-return instructions.
	 *
	 * http://support.amd.com/us/Processor_TechDocs/41322_10h_Rev_Gd.pdf
	 * http://support.amd.com/us/Processor_TechDocs/44739_12h_Rev_Gd.pdf
	 *
	 * Hypervisors do not provide access to the errata MSR,
	 * causing #GP exception on attempt to apply the errata.  The
	 * MSR write shall be done on host and persist globally
	 * anyway, so do not try to do it when under virtualization.
	 */
	switch (FUNC0(cpu_id)) {
	case 0x10:
	case 0x12:
		if ((cpu_feature2 & CPUID2_HV) == 0)
			FUNC3(0xc0011029, FUNC2(0xc0011029) | 1);
		break;
	}

	/*
	 * BIOS may fail to set InitApicIdCpuIdLo to 1 as it should per BKDG.
	 * So, do it here or otherwise some tools could be confused by
	 * Initial Local APIC ID reported with CPUID Function 1 in EBX.
	 */
	if (FUNC0(cpu_id) == 0x10) {
		if ((cpu_feature2 & CPUID2_HV) == 0) {
			msr = FUNC2(MSR_NB_CFG1);
			msr |= (uint64_t)1 << 54;
			FUNC3(MSR_NB_CFG1, msr);
		}
	}

	/*
	 * BIOS may configure Family 10h processors to convert WC+ cache type
	 * to CD.  That can hurt performance of guest VMs using nested paging.
	 * The relevant MSR bit is not documented in the BKDG,
	 * the fix is borrowed from Linux.
	 */
	if (FUNC0(cpu_id) == 0x10) {
		if ((cpu_feature2 & CPUID2_HV) == 0) {
			msr = FUNC2(0xc001102a);
			msr &= ~((uint64_t)1 << 24);
			FUNC3(0xc001102a, msr);
		}
	}

	/*
	 * Work around Erratum 793: Specific Combination of Writes to Write
	 * Combined Memory Types and Locked Instructions May Cause Core Hang.
	 * See Revision Guide for AMD Family 16h Models 00h-0Fh Processors,
	 * revision 3.04 or later, publication 51810.
	 */
	if (FUNC0(cpu_id) == 0x16 && FUNC1(cpu_id) <= 0xf) {
		if ((cpu_feature2 & CPUID2_HV) == 0) {
			msr = FUNC2(MSR_LS_CFG);
			msr |= (uint64_t)1 << 15;
			FUNC3(MSR_LS_CFG, msr);
		}
	}

	/* Ryzen erratas. */
	if (FUNC0(cpu_id) == 0x17 && FUNC1(cpu_id) == 0x1 &&
	    (cpu_feature2 & CPUID2_HV) == 0) {
		/* 1021 */
		msr = FUNC2(0xc0011029);
		msr |= 0x2000;
		FUNC3(0xc0011029, msr);

		/* 1033 */
		msr = FUNC2(MSR_LS_CFG);
		msr |= 0x10;
		FUNC3(MSR_LS_CFG, msr);

		/* 1049 */
		msr = FUNC2(0xc0011028);
		msr |= 0x10;
		FUNC3(0xc0011028, msr);

		/* 1095 */
		msr = FUNC2(MSR_LS_CFG);
		msr |= 0x200000000000000;
		FUNC3(MSR_LS_CFG, msr);
	}

	/*
	 * Work around a problem on Ryzen that is triggered by executing
	 * code near the top of user memory, in our case the signal
	 * trampoline code in the shared page on amd64.
	 *
	 * This function is executed once for the BSP before tunables take
	 * effect so the value determined here can be overridden by the
	 * tunable.  This function is then executed again for each AP and
	 * also on resume.  Set a flag the first time so that value set by
	 * the tunable is not overwritten.
	 *
	 * The stepping and/or microcode versions should be checked after
	 * this issue is fixed by AMD so that we don't use this mode if not
	 * needed.
	 */
	if (lower_sharedpage_init == 0) {
		lower_sharedpage_init = 1;
		if (FUNC0(cpu_id) == 0x17) {
			hw_lower_amd64_sharedpage = 1;
		}
	}
}
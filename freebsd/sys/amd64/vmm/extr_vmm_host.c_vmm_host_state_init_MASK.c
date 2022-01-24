#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int xsave_enabled; int xcr0_allowed; int xsave_max_size; } ;

/* Variables and functions */
 int CR0_TS ; 
 int CR4_PGE ; 
 int CR4_XSAVE ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  MSR_PAT ; 
 int XFEATURE_AVX ; 
 int XFEATURE_AVX512 ; 
 int XFEATURE_MPX ; 
 int /*<<< orphan*/  FUNC0 (int,int,int*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int vmm_host_cr0 ; 
 int vmm_host_cr4 ; 
 void* vmm_host_efer ; 
 void* vmm_host_pat ; 
 int vmm_host_xcr0 ; 
 TYPE_1__ vmm_xsave_limits ; 

void
FUNC5(void)
{
	int regs[4];

	vmm_host_efer = FUNC3(MSR_EFER);
	vmm_host_pat = FUNC3(MSR_PAT);

	/*
	 * We always want CR0.TS to be set when the processor does a VM exit.
	 *
	 * With emulation turned on unconditionally after a VM exit, we are
	 * able to trap inadvertent use of the FPU until the guest FPU state
	 * has been safely squirreled away.
	 */
	vmm_host_cr0 = FUNC1() | CR0_TS;

	/*
	 * On non-PCID or PCID but without INVPCID support machines,
	 * we flush kernel i.e. global TLB entries, by temporary
	 * clearing the CR4.PGE bit, see invltlb_glob().  If
	 * preemption occurs at the wrong time, cached vmm_host_cr4
	 * might store the value with CR4.PGE cleared.  Since FreeBSD
	 * requires support for PG_G on amd64, just set it
	 * unconditionally.
	 */
	vmm_host_cr4 = FUNC2() | CR4_PGE;

	/*
	 * Only permit a guest to use XSAVE if the host is using
	 * XSAVE.  Only permit a guest to use XSAVE features supported
	 * by the host.  This ensures that the FPU state used by the
	 * guest is always a subset of the saved guest FPU state.
	 *
	 * In addition, only permit known XSAVE features where the
	 * rules for which features depend on other features is known
	 * to properly emulate xsetbv.
	 */
	if (vmm_host_cr4 & CR4_XSAVE) {
		vmm_xsave_limits.xsave_enabled = 1;
		vmm_host_xcr0 = FUNC4(0);
		vmm_xsave_limits.xcr0_allowed = vmm_host_xcr0 &
		    (XFEATURE_AVX | XFEATURE_MPX | XFEATURE_AVX512);

		FUNC0(0xd, 0x0, regs);
		vmm_xsave_limits.xsave_max_size = regs[1];
	}
}
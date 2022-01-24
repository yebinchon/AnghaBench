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
struct vmxctx {int host_tf; int /*<<< orphan*/  guest_dr6; int /*<<< orphan*/  guest_dr3; int /*<<< orphan*/  guest_dr2; int /*<<< orphan*/  guest_dr1; int /*<<< orphan*/  guest_dr0; int /*<<< orphan*/  host_dr6; int /*<<< orphan*/  host_dr3; int /*<<< orphan*/  host_dr2; int /*<<< orphan*/  host_dr1; int /*<<< orphan*/  host_dr0; int /*<<< orphan*/  host_debugctl; int /*<<< orphan*/  host_dr7; } ;
typedef  int register_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_DEBUGCTLMSR ; 
 int PSL_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC16(struct vmxctx *vmxctx)
{
	register_t rflags;

	/* Save host control debug registers. */
	vmxctx->host_dr7 = FUNC12();
	vmxctx->host_debugctl = FUNC6(MSR_DEBUGCTLMSR);

	/*
	 * Disable debugging in DR7 and DEBUGCTL to avoid triggering
	 * exceptions in the host based on the guest DRx values.  The
	 * guest DR7 and DEBUGCTL are saved/restored in the VMCS.
	 */
	FUNC5(0);
	FUNC15(MSR_DEBUGCTLMSR, 0);

	/*
	 * Disable single stepping the kernel to avoid corrupting the
	 * guest DR6.  A debugger might still be able to corrupt the
	 * guest DR6 by setting a breakpoint after this point and then
	 * single stepping.
	 */
	rflags = FUNC13();
	vmxctx->host_tf = rflags & PSL_T;
	FUNC14(rflags & ~PSL_T);

	/* Save host debug registers. */
	vmxctx->host_dr0 = FUNC7();
	vmxctx->host_dr1 = FUNC8();
	vmxctx->host_dr2 = FUNC9();
	vmxctx->host_dr3 = FUNC10();
	vmxctx->host_dr6 = FUNC11();

	/* Restore guest debug registers. */
	FUNC0(vmxctx->guest_dr0);
	FUNC1(vmxctx->guest_dr1);
	FUNC2(vmxctx->guest_dr2);
	FUNC3(vmxctx->guest_dr3);
	FUNC4(vmxctx->guest_dr6);
}
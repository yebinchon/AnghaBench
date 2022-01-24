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
struct vmxctx {int host_tf; int /*<<< orphan*/  host_dr7; int /*<<< orphan*/  host_debugctl; int /*<<< orphan*/  host_dr6; int /*<<< orphan*/  host_dr3; int /*<<< orphan*/  host_dr2; int /*<<< orphan*/  host_dr1; int /*<<< orphan*/  host_dr0; int /*<<< orphan*/  guest_dr6; int /*<<< orphan*/  guest_dr3; int /*<<< orphan*/  guest_dr2; int /*<<< orphan*/  guest_dr1; int /*<<< orphan*/  guest_dr0; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_DEBUGCTLMSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC14(struct vmxctx *vmxctx)
{

	/* Save guest debug registers. */
	vmxctx->guest_dr0 = FUNC6();
	vmxctx->guest_dr1 = FUNC7();
	vmxctx->guest_dr2 = FUNC8();
	vmxctx->guest_dr3 = FUNC9();
	vmxctx->guest_dr6 = FUNC10();

	/*
	 * Restore host debug registers.  Restore DR7, DEBUGCTL, and
	 * PSL_T last.
	 */
	FUNC0(vmxctx->host_dr0);
	FUNC1(vmxctx->host_dr1);
	FUNC2(vmxctx->host_dr2);
	FUNC3(vmxctx->host_dr3);
	FUNC4(vmxctx->host_dr6);
	FUNC13(MSR_DEBUGCTLMSR, vmxctx->host_debugctl);
	FUNC5(vmxctx->host_dr7);
	FUNC12(FUNC11() | vmxctx->host_tf);
}
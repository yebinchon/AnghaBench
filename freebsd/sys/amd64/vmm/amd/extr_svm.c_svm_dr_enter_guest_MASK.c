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
struct svm_regctx {int /*<<< orphan*/  sctx_dr3; int /*<<< orphan*/  sctx_dr2; int /*<<< orphan*/  sctx_dr1; int /*<<< orphan*/  sctx_dr0; int /*<<< orphan*/  host_dr6; int /*<<< orphan*/  host_dr3; int /*<<< orphan*/  host_dr2; int /*<<< orphan*/  host_dr1; int /*<<< orphan*/  host_dr0; int /*<<< orphan*/  host_debugctl; int /*<<< orphan*/  host_dr7; } ;

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
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC13(struct svm_regctx *gctx)
{

	/* Save host control debug registers. */
	gctx->host_dr7 = FUNC11();
	gctx->host_debugctl = FUNC5(MSR_DEBUGCTLMSR);

	/*
	 * Disable debugging in DR7 and DEBUGCTL to avoid triggering
	 * exceptions in the host based on the guest DRx values.  The
	 * guest DR6, DR7, and DEBUGCTL are saved/restored in the
	 * VMCB.
	 */
	FUNC4(0);
	FUNC12(MSR_DEBUGCTLMSR, 0);

	/* Save host debug registers. */
	gctx->host_dr0 = FUNC6();
	gctx->host_dr1 = FUNC7();
	gctx->host_dr2 = FUNC8();
	gctx->host_dr3 = FUNC9();
	gctx->host_dr6 = FUNC10();

	/* Restore guest debug registers. */
	FUNC0(gctx->sctx_dr0);
	FUNC1(gctx->sctx_dr1);
	FUNC2(gctx->sctx_dr2);
	FUNC3(gctx->sctx_dr3);
}
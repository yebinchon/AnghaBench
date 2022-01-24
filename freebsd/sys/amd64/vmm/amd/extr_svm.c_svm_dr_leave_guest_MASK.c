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
struct svm_regctx {int /*<<< orphan*/  host_dr7; int /*<<< orphan*/  host_debugctl; int /*<<< orphan*/  host_dr6; int /*<<< orphan*/  host_dr3; int /*<<< orphan*/  host_dr2; int /*<<< orphan*/  host_dr1; int /*<<< orphan*/  host_dr0; int /*<<< orphan*/  sctx_dr3; int /*<<< orphan*/  sctx_dr2; int /*<<< orphan*/  sctx_dr1; int /*<<< orphan*/  sctx_dr0; } ;

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
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC11(struct svm_regctx *gctx)
{

	/* Save guest debug registers. */
	gctx->sctx_dr0 = FUNC6();
	gctx->sctx_dr1 = FUNC7();
	gctx->sctx_dr2 = FUNC8();
	gctx->sctx_dr3 = FUNC9();

	/*
	 * Restore host debug registers.  Restore DR7 and DEBUGCTL
	 * last.
	 */
	FUNC0(gctx->host_dr0);
	FUNC1(gctx->host_dr1);
	FUNC2(gctx->host_dr2);
	FUNC3(gctx->host_dr3);
	FUNC4(gctx->host_dr6);
	FUNC10(MSR_DEBUGCTLMSR, gctx->host_debugctl);
	FUNC5(gctx->host_dr7);
}
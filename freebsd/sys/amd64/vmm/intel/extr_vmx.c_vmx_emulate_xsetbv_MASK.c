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
struct xsave_limits {int xcr0_allowed; int /*<<< orphan*/  xsave_enabled; } ;
struct vmxctx {scalar_t__ guest_rcx; int guest_rdx; int guest_rax; } ;
struct vmx {int /*<<< orphan*/  vm; struct vmxctx* ctx; } ;
struct vm_exit {int dummy; } ;

/* Variables and functions */
 int CR4_XSAVE ; 
 int HANDLED ; 
 int /*<<< orphan*/  VMCS_GUEST_CR4 ; 
 int XFEATURE_AVX ; 
 int XFEATURE_AVX512 ; 
 int XFEATURE_ENABLED_AVX ; 
 int XFEATURE_ENABLED_BNDCSR ; 
 int XFEATURE_ENABLED_BNDREGS ; 
 int XFEATURE_ENABLED_X87 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct xsave_limits* FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct vmx *vmx, int vcpu, struct vm_exit *vmexit)
{
	struct vmxctx *vmxctx;
	uint64_t xcrval;
	const struct xsave_limits *limits;

	vmxctx = &vmx->ctx[vcpu];
	limits = FUNC4();

	/*
	 * Note that the processor raises a GP# fault on its own if
	 * xsetbv is executed for CPL != 0, so we do not have to
	 * emulate that fault here.
	 */

	/* Only xcr0 is supported. */
	if (vmxctx->guest_rcx != 0) {
		FUNC1(vmx->vm, vcpu);
		return (HANDLED);
	}

	/* We only handle xcr0 if both the host and guest have XSAVE enabled. */
	if (!limits->xsave_enabled || !(FUNC3(VMCS_GUEST_CR4) & CR4_XSAVE)) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	xcrval = vmxctx->guest_rdx << 32 | (vmxctx->guest_rax & 0xffffffff);
	if ((xcrval & ~limits->xcr0_allowed) != 0) {
		FUNC1(vmx->vm, vcpu);
		return (HANDLED);
	}

	if (!(xcrval & XFEATURE_ENABLED_X87)) {
		FUNC1(vmx->vm, vcpu);
		return (HANDLED);
	}

	/* AVX (YMM_Hi128) requires SSE. */
	if (xcrval & XFEATURE_ENABLED_AVX &&
	    (xcrval & XFEATURE_AVX) != XFEATURE_AVX) {
		FUNC1(vmx->vm, vcpu);
		return (HANDLED);
	}

	/*
	 * AVX512 requires base AVX (YMM_Hi128) as well as OpMask,
	 * ZMM_Hi256, and Hi16_ZMM.
	 */
	if (xcrval & XFEATURE_AVX512 &&
	    (xcrval & (XFEATURE_AVX512 | XFEATURE_AVX)) !=
	    (XFEATURE_AVX512 | XFEATURE_AVX)) {
		FUNC1(vmx->vm, vcpu);
		return (HANDLED);
	}

	/*
	 * Intel MPX requires both bound register state flags to be
	 * set.
	 */
	if (((xcrval & XFEATURE_ENABLED_BNDREGS) != 0) !=
	    ((xcrval & XFEATURE_ENABLED_BNDCSR) != 0)) {
		FUNC1(vmx->vm, vcpu);
		return (HANDLED);
	}

	/*
	 * This runs "inside" vmrun() with the guest's FPU state, so
	 * modifying xcr0 directly modifies the guest's xcr0, not the
	 * host's.
	 */
	FUNC0(0, xcrval);
	return (HANDLED);
}
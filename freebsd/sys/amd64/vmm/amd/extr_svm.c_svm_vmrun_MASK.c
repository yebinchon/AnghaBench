#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vmcb_state {int rip; } ;
struct vmcb_ctrl {int vmcb_clean; } ;
struct vm_exit {int dummy; } ;
struct vm_eventinfo {int dummy; } ;
struct vm {int dummy; } ;
struct vlapic {int dummy; } ;
struct TYPE_7__ {scalar_t__ gen; } ;
struct svm_vcpu {scalar_t__ lastcpu; int dirty; int nextrip; TYPE_2__ asid; } ;
struct svm_softc {TYPE_1__* vcpu; struct vm* vm; } ;
struct svm_regctx {int dummy; } ;
typedef  int register_t ;
typedef  TYPE_3__* pmap_t ;
struct TYPE_8__ {int /*<<< orphan*/  pm_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  vmcb_pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,char*,int) ; 
 int /*<<< orphan*/  VCPU_MIGRATIONS ; 
 int /*<<< orphan*/  FUNC3 (struct svm_softc*,int,TYPE_3__*,scalar_t__) ; 
 scalar_t__ curcpu ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct svm_regctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct svm_regctx*) ; 
 struct svm_regctx* FUNC12 (struct svm_softc*,int) ; 
 struct svm_vcpu* FUNC13 (struct svm_softc*,int) ; 
 struct vmcb_ctrl* FUNC14 (struct svm_softc*,int) ; 
 struct vmcb_state* FUNC15 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct svm_softc*,int,struct vlapic*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct svm_regctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct svm_softc*,int,int) ; 
 int FUNC21 (struct svm_softc*,int,struct vm_exit*) ; 
 scalar_t__ FUNC22 (struct vm*,int) ; 
 scalar_t__ FUNC23 (struct vm_eventinfo*) ; 
 scalar_t__ FUNC24 (struct vm_eventinfo*) ; 
 scalar_t__ FUNC25 (struct vm*,int) ; 
 scalar_t__ FUNC26 (struct vm_eventinfo*) ; 
 int /*<<< orphan*/  FUNC27 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct vm*,int,int) ; 
 struct vm_exit* FUNC32 (struct vm*,int) ; 
 struct vlapic* FUNC33 (struct vm*,int) ; 
 int vmcb_clean ; 
 int /*<<< orphan*/  FUNC34 (struct vm*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC35(void *arg, int vcpu, register_t rip, pmap_t pmap, 
	struct vm_eventinfo *evinfo)
{
	struct svm_regctx *gctx;
	struct svm_softc *svm_sc;
	struct svm_vcpu *vcpustate;
	struct vmcb_state *state;
	struct vmcb_ctrl *ctrl;
	struct vm_exit *vmexit;
	struct vlapic *vlapic;
	struct vm *vm;
	uint64_t vmcb_pa;
	int handled;
	uint16_t ldt_sel;

	svm_sc = arg;
	vm = svm_sc->vm;

	vcpustate = FUNC13(svm_sc, vcpu);
	state = FUNC15(svm_sc, vcpu);
	ctrl = FUNC14(svm_sc, vcpu);
	vmexit = FUNC32(vm, vcpu);
	vlapic = FUNC33(vm, vcpu);

	gctx = FUNC12(svm_sc, vcpu);
	vmcb_pa = svm_sc->vcpu[vcpu].vmcb_pa;

	if (vcpustate->lastcpu != curcpu) {
		/*
		 * Force new ASID allocation by invalidating the generation.
		 */
		vcpustate->asid.gen = 0;

		/*
		 * Invalidate the VMCB state cache by marking all fields dirty.
		 */
		FUNC20(svm_sc, vcpu, 0xffffffff);

		/*
		 * XXX
		 * Setting 'vcpustate->lastcpu' here is bit premature because
		 * we may return from this function without actually executing
		 * the VMRUN  instruction. This could happen if a rendezvous
		 * or an AST is pending on the first time through the loop.
		 *
		 * This works for now but any new side-effects of vcpu
		 * migration should take this case into account.
		 */
		vcpustate->lastcpu = curcpu;
		FUNC34(vm, vcpu, VCPU_MIGRATIONS, 1);
	}

	FUNC18(svm_sc, vcpu);

	/* Update Guest RIP */
	state->rip = rip;

	do {
		/*
		 * Disable global interrupts to guarantee atomicity during
		 * loading of guest state. This includes not only the state
		 * loaded by the "vmrun" instruction but also software state
		 * maintained by the hypervisor: suspended and rendezvous
		 * state, NPT generation number, vlapic interrupts etc.
		 */
		FUNC4();

		if (FUNC26(evinfo)) {
			FUNC5();
			FUNC31(vm, vcpu, state->rip);
			break;
		}

		if (FUNC23(evinfo)) {
			FUNC5();
			FUNC29(vm, vcpu, state->rip);
			break;
		}

		if (FUNC24(evinfo)) {
			FUNC5();
			FUNC30(vm, vcpu, state->rip);
			break;
		}

		/* We are asked to give the cpu by scheduler. */
		if (FUNC25(vm, vcpu)) {
			FUNC5();
			FUNC27(vm, vcpu, state->rip);
			break;
		}

		if (FUNC22(vm, vcpu)) {
			FUNC5();
			FUNC28(vm, vcpu, state->rip);
			break;
		}

		/*
		 * #VMEXIT resumes the host with the guest LDTR, so
		 * save the current LDT selector so it can be restored
		 * after an exit.  The userspace hypervisor probably
		 * doesn't use a LDT, but save and restore it to be
		 * safe.
		 */
		ldt_sel = FUNC9();

		FUNC16(svm_sc, vcpu, vlapic);

		/* Activate the nested pmap on 'curcpu' */
		FUNC1(curcpu, &pmap->pm_active);

		/*
		 * Check the pmap generation and the ASID generation to
		 * ensure that the vcpu does not use stale TLB mappings.
		 */
		FUNC3(svm_sc, vcpu, pmap, curcpu);

		ctrl->vmcb_clean = vmcb_clean & ~vcpustate->dirty;
		vcpustate->dirty = 0;
		FUNC2(vm, vcpu, "vmcb clean %#x", ctrl->vmcb_clean);

		/* Launch Virtual Machine. */
		FUNC2(vm, vcpu, "Resume execution at %#lx", state->rip);
		FUNC10(gctx);
		FUNC17(vmcb_pa, gctx, FUNC6());
		FUNC11(gctx);

		FUNC0(curcpu, &pmap->pm_active);

		/*
		 * The host GDTR and IDTR is saved by VMRUN and restored
		 * automatically on #VMEXIT. However, the host TSS needs
		 * to be restored explicitly.
		 */
		FUNC8();

		/* Restore host LDTR. */
		FUNC7(ldt_sel);

		/* #VMEXIT disables interrupts so re-enable them here. */ 
		FUNC5();

		/* Update 'nextrip' */
		vcpustate->nextrip = state->rip;

		/* Handle #VMEXIT and if required return to user space. */
		handled = FUNC21(svm_sc, vcpu, vmexit);
	} while (handled);

	FUNC19(svm_sc, vcpu);

	return (0);
}
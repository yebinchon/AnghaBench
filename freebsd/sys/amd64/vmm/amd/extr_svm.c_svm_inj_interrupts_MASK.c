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
typedef  int uint8_t ;
struct vmcb_state {scalar_t__ rip; int rflags; } ;
struct vmcb_ctrl {int eventinj; int v_tpr; scalar_t__ intr_shadow; } ;
struct vlapic {int dummy; } ;
struct svm_vcpu {scalar_t__ nextrip; } ;
struct svm_softc {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int IDT_NMI ; 
 int /*<<< orphan*/  IPI_AST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PSL_I ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  VMCB_CACHE_TPR ; 
 int /*<<< orphan*/  VMCB_EVENTINJ_TYPE_INTR ; 
 int /*<<< orphan*/  VMCB_EVENTINJ_TYPE_NMI ; 
 int VMCB_EVENTINJ_VALID ; 
 int /*<<< orphan*/  curcpu ; 
 int /*<<< orphan*/  FUNC4 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct svm_softc*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct svm_vcpu* FUNC10 (struct svm_softc*,int) ; 
 struct vmcb_ctrl* FUNC11 (struct svm_softc*,int) ; 
 struct vmcb_state* FUNC12 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct svm_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*) ; 
 int FUNC17 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC18 (struct vlapic*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct vlapic*,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC24(struct svm_softc *sc, int vcpu, struct vlapic *vlapic)
{
	struct vmcb_ctrl *ctrl;
	struct vmcb_state *state;
	struct svm_vcpu *vcpustate;
	uint8_t v_tpr;
	int vector, need_intr_window;
	int extint_pending;

	state = FUNC12(sc, vcpu);
	ctrl  = FUNC11(sc, vcpu);
	vcpustate = FUNC10(sc, vcpu);

	need_intr_window = 0;

	if (vcpustate->nextrip != state->rip) {
		ctrl->intr_shadow = 0;
		FUNC3(sc->vm, vcpu, "Guest interrupt blocking "
		    "cleared due to rip change: %#lx/%#lx",
		    vcpustate->nextrip, state->rip);
	}

	/*
	 * Inject pending events or exceptions for this vcpu.
	 *
	 * An event might be pending because the previous #VMEXIT happened
	 * during event delivery (i.e. ctrl->exitintinfo).
	 *
	 * An event might also be pending because an exception was injected
	 * by the hypervisor (e.g. #PF during instruction emulation).
	 */
	FUNC13(sc, vcpu);

	/* NMI event has priority over interrupts. */
	if (FUNC23(sc->vm, vcpu)) {
		if (FUNC8(sc, vcpu)) {
			/*
			 * Can't inject another NMI if the guest has not
			 * yet executed an "iret" after the last NMI.
			 */
			FUNC1(sc->vm, vcpu, "Cannot inject NMI due "
			    "to NMI-blocking");
		} else if (ctrl->intr_shadow) {
			/*
			 * Can't inject an NMI if the vcpu is in an intr_shadow.
			 */
			FUNC1(sc->vm, vcpu, "Cannot inject NMI due to "
			    "interrupt shadow");
			need_intr_window = 1;
			goto done;
		} else if (ctrl->eventinj & VMCB_EVENTINJ_VALID) {
			/*
			 * If there is already an exception/interrupt pending
			 * then defer the NMI until after that.
			 */
			FUNC2(sc->vm, vcpu, "Cannot inject NMI due to "
			    "eventinj %#lx", ctrl->eventinj);

			/*
			 * Use self-IPI to trigger a VM-exit as soon as
			 * possible after the event injection is completed.
			 *
			 * This works only if the external interrupt exiting
			 * is at a lower priority than the event injection.
			 *
			 * Although not explicitly specified in APMv2 the
			 * relative priorities were verified empirically.
			 */
			FUNC7(curcpu, IPI_AST);	/* XXX vmm_ipinum? */
		} else {
			FUNC22(sc->vm, vcpu);

			/* Inject NMI, vector number is not used */
			FUNC9(sc, vcpu, VMCB_EVENTINJ_TYPE_NMI,
			    IDT_NMI, 0, false);

			/* virtual NMI blocking is now in effect */
			FUNC6(sc, vcpu);

			FUNC1(sc->vm, vcpu, "Injecting vNMI");
		}
	}

	extint_pending = FUNC21(sc->vm, vcpu);
	if (!extint_pending) {
		if (!FUNC19(vlapic, &vector))
			goto done;
		FUNC0(vector >= 16 && vector <= 255,
		    ("invalid vector %d from local APIC", vector));
	} else {
		/* Ask the legacy pic for a vector to inject */
		FUNC16(sc->vm, &vector);
		FUNC0(vector >= 0 && vector <= 255,
		    ("invalid vector %d from INTR", vector));
	}

	/*
	 * If the guest has disabled interrupts or is in an interrupt shadow
	 * then we cannot inject the pending interrupt.
	 */
	if ((state->rflags & PSL_I) == 0) {
		FUNC3(sc->vm, vcpu, "Cannot inject vector %d due to "
		    "rflags %#lx", vector, state->rflags);
		need_intr_window = 1;
		goto done;
	}

	if (ctrl->intr_shadow) {
		FUNC2(sc->vm, vcpu, "Cannot inject vector %d due to "
		    "interrupt shadow", vector);
		need_intr_window = 1;
		goto done;
	}

	if (ctrl->eventinj & VMCB_EVENTINJ_VALID) {
		FUNC3(sc->vm, vcpu, "Cannot inject vector %d due to "
		    "eventinj %#lx", vector, ctrl->eventinj);
		need_intr_window = 1;
		goto done;
	}

	FUNC9(sc, vcpu, VMCB_EVENTINJ_TYPE_INTR, vector, 0, false);

	if (!extint_pending) {
		FUNC18(vlapic, vector);
	} else {
		FUNC20(sc->vm, vcpu);
		FUNC15(sc->vm, vector);
	}

	/*
	 * Force a VM-exit as soon as the vcpu is ready to accept another
	 * interrupt. This is done because the PIC might have another vector
	 * that it wants to inject. Also, if the APIC has a pending interrupt
	 * that was preempted by the ExtInt then it allows us to inject the
	 * APIC vector as soon as possible.
	 */
	need_intr_window = 1;
done:
	/*
	 * The guest can modify the TPR by writing to %CR8. In guest mode
	 * the processor reflects this write to V_TPR without hypervisor
	 * intervention.
	 *
	 * The guest can also modify the TPR by writing to it via the memory
	 * mapped APIC page. In this case, the write will be emulated by the
	 * hypervisor. For this reason V_TPR must be updated before every
	 * VMRUN.
	 */
	v_tpr = FUNC17(vlapic);
	FUNC0(v_tpr <= 15, ("invalid v_tpr %#x", v_tpr));
	if (ctrl->v_tpr != v_tpr) {
		FUNC3(sc->vm, vcpu, "VMCB V_TPR changed from %#x to %#x",
		    ctrl->v_tpr, v_tpr);
		ctrl->v_tpr = v_tpr;
		FUNC14(sc, vcpu, VMCB_CACHE_TPR);
	}

	if (need_intr_window) {
		/*
		 * We use V_IRQ in conjunction with the VINTR intercept to
		 * trap into the hypervisor as soon as a virtual interrupt
		 * can be delivered.
		 *
		 * Since injected events are not subject to intercept checks
		 * we need to ensure that the V_IRQ is not actually going to
		 * be delivered on VM entry. The KASSERT below enforces this.
		 */
		FUNC0((ctrl->eventinj & VMCB_EVENTINJ_VALID) != 0 ||
		    (state->rflags & PSL_I) == 0 || ctrl->intr_shadow,
		    ("Bogus intr_window_exiting: eventinj (%#lx), "
		    "intr_shadow (%u), rflags (%#lx)",
		    ctrl->eventinj, ctrl->intr_shadow, state->rflags));
		FUNC5(sc, vcpu);
	} else {
		FUNC4(sc, vcpu);
	}
}
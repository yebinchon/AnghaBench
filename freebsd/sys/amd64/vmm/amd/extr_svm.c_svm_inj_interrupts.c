
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vmcb_state {scalar_t__ rip; int rflags; } ;
struct vmcb_ctrl {int eventinj; int v_tpr; scalar_t__ intr_shadow; } ;
struct vlapic {int dummy; } ;
struct svm_vcpu {scalar_t__ nextrip; } ;
struct svm_softc {int vm; } ;


 int IDT_NMI ;
 int IPI_AST ;
 int KASSERT (int,char*) ;
 int PSL_I ;
 int VCPU_CTR0 (int ,int,char*) ;
 int VCPU_CTR1 (int ,int,char*,int) ;
 int VCPU_CTR2 (int ,int,char*,int,int) ;
 int VMCB_CACHE_TPR ;
 int VMCB_EVENTINJ_TYPE_INTR ;
 int VMCB_EVENTINJ_TYPE_NMI ;
 int VMCB_EVENTINJ_VALID ;
 int curcpu ;
 int disable_intr_window_exiting (struct svm_softc*,int) ;
 int enable_intr_window_exiting (struct svm_softc*,int) ;
 int enable_nmi_blocking (struct svm_softc*,int) ;
 int ipi_cpu (int ,int ) ;
 scalar_t__ nmi_blocked (struct svm_softc*,int) ;
 int svm_eventinject (struct svm_softc*,int,int ,int,int ,int) ;
 struct svm_vcpu* svm_get_vcpu (struct svm_softc*,int) ;
 struct vmcb_ctrl* svm_get_vmcb_ctrl (struct svm_softc*,int) ;
 struct vmcb_state* svm_get_vmcb_state (struct svm_softc*,int) ;
 int svm_inj_intinfo (struct svm_softc*,int) ;
 int svm_set_dirty (struct svm_softc*,int,int ) ;
 int vatpic_intr_accepted (int ,int) ;
 int vatpic_pending_intr (int ,int*) ;
 int vlapic_get_cr8 (struct vlapic*) ;
 int vlapic_intr_accepted (struct vlapic*,int) ;
 int vlapic_pending_intr (struct vlapic*,int*) ;
 int vm_extint_clear (int ,int) ;
 int vm_extint_pending (int ,int) ;
 int vm_nmi_clear (int ,int) ;
 scalar_t__ vm_nmi_pending (int ,int) ;

__attribute__((used)) static void
svm_inj_interrupts(struct svm_softc *sc, int vcpu, struct vlapic *vlapic)
{
 struct vmcb_ctrl *ctrl;
 struct vmcb_state *state;
 struct svm_vcpu *vcpustate;
 uint8_t v_tpr;
 int vector, need_intr_window;
 int extint_pending;

 state = svm_get_vmcb_state(sc, vcpu);
 ctrl = svm_get_vmcb_ctrl(sc, vcpu);
 vcpustate = svm_get_vcpu(sc, vcpu);

 need_intr_window = 0;

 if (vcpustate->nextrip != state->rip) {
  ctrl->intr_shadow = 0;
  VCPU_CTR2(sc->vm, vcpu, "Guest interrupt blocking "
      "cleared due to rip change: %#lx/%#lx",
      vcpustate->nextrip, state->rip);
 }
 svm_inj_intinfo(sc, vcpu);


 if (vm_nmi_pending(sc->vm, vcpu)) {
  if (nmi_blocked(sc, vcpu)) {




   VCPU_CTR0(sc->vm, vcpu, "Cannot inject NMI due "
       "to NMI-blocking");
  } else if (ctrl->intr_shadow) {



   VCPU_CTR0(sc->vm, vcpu, "Cannot inject NMI due to "
       "interrupt shadow");
   need_intr_window = 1;
   goto done;
  } else if (ctrl->eventinj & VMCB_EVENTINJ_VALID) {




   VCPU_CTR1(sc->vm, vcpu, "Cannot inject NMI due to "
       "eventinj %#lx", ctrl->eventinj);
   ipi_cpu(curcpu, IPI_AST);
  } else {
   vm_nmi_clear(sc->vm, vcpu);


   svm_eventinject(sc, vcpu, VMCB_EVENTINJ_TYPE_NMI,
       IDT_NMI, 0, 0);


   enable_nmi_blocking(sc, vcpu);

   VCPU_CTR0(sc->vm, vcpu, "Injecting vNMI");
  }
 }

 extint_pending = vm_extint_pending(sc->vm, vcpu);
 if (!extint_pending) {
  if (!vlapic_pending_intr(vlapic, &vector))
   goto done;
  KASSERT(vector >= 16 && vector <= 255,
      ("invalid vector %d from local APIC", vector));
 } else {

  vatpic_pending_intr(sc->vm, &vector);
  KASSERT(vector >= 0 && vector <= 255,
      ("invalid vector %d from INTR", vector));
 }





 if ((state->rflags & PSL_I) == 0) {
  VCPU_CTR2(sc->vm, vcpu, "Cannot inject vector %d due to "
      "rflags %#lx", vector, state->rflags);
  need_intr_window = 1;
  goto done;
 }

 if (ctrl->intr_shadow) {
  VCPU_CTR1(sc->vm, vcpu, "Cannot inject vector %d due to "
      "interrupt shadow", vector);
  need_intr_window = 1;
  goto done;
 }

 if (ctrl->eventinj & VMCB_EVENTINJ_VALID) {
  VCPU_CTR2(sc->vm, vcpu, "Cannot inject vector %d due to "
      "eventinj %#lx", vector, ctrl->eventinj);
  need_intr_window = 1;
  goto done;
 }

 svm_eventinject(sc, vcpu, VMCB_EVENTINJ_TYPE_INTR, vector, 0, 0);

 if (!extint_pending) {
  vlapic_intr_accepted(vlapic, vector);
 } else {
  vm_extint_clear(sc->vm, vcpu);
  vatpic_intr_accepted(sc->vm, vector);
 }
 need_intr_window = 1;
done:
 v_tpr = vlapic_get_cr8(vlapic);
 KASSERT(v_tpr <= 15, ("invalid v_tpr %#x", v_tpr));
 if (ctrl->v_tpr != v_tpr) {
  VCPU_CTR2(sc->vm, vcpu, "VMCB V_TPR changed from %#x to %#x",
      ctrl->v_tpr, v_tpr);
  ctrl->v_tpr = v_tpr;
  svm_set_dirty(sc, vcpu, VMCB_CACHE_TPR);
 }

 if (need_intr_window) {
  KASSERT((ctrl->eventinj & VMCB_EVENTINJ_VALID) != 0 ||
      (state->rflags & PSL_I) == 0 || ctrl->intr_shadow,
      ("Bogus intr_window_exiting: eventinj (%#lx), "
      "intr_shadow (%u), rflags (%#lx)",
      ctrl->eventinj, ctrl->intr_shadow, state->rflags));
  enable_intr_window_exiting(sc, vcpu);
 } else {
  disable_intr_window_exiting(sc, vcpu);
 }
}

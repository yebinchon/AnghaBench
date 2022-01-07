
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef int uint32_t ;
struct vmcb_state {int dbgctl; int g_pat; int dr7; int dr6; int efer; } ;
struct vmcb_ctrl {int np_enable; int v_intr_masking; int lbr_virt_en; scalar_t__ asid; void* n_cr3; void* msrpm_base_pa; void* iopm_base_pa; } ;
struct svm_softc {int vm; } ;


 int BIT (int) ;
 int DBREG_DR6_RESERVED1 ;
 int DBREG_DR7_RESERVED1 ;
 int EFER_SVM ;
 int IDT_MC ;
 int PAT_UNCACHEABLE ;
 int PAT_UNCACHED ;
 int PAT_VALUE (int,int ) ;
 int PAT_WRITE_BACK ;
 int PAT_WRITE_THROUGH ;
 int VMCB_CR_INTCPT ;
 int VMCB_CTRL1_INTCPT ;
 int VMCB_CTRL2_INTCPT ;
 int VMCB_EXC_INTCPT ;
 int VMCB_INTCPT_CPUID ;
 int VMCB_INTCPT_FERR_FREEZE ;
 int VMCB_INTCPT_INIT ;
 int VMCB_INTCPT_INTR ;
 int VMCB_INTCPT_IO ;
 int VMCB_INTCPT_MONITOR ;
 int VMCB_INTCPT_MSR ;
 int VMCB_INTCPT_MWAIT ;
 int VMCB_INTCPT_NMI ;
 int VMCB_INTCPT_SHUTDOWN ;
 int VMCB_INTCPT_SMI ;
 int VMCB_INTCPT_VMRUN ;
 int svm_disable_intercept (struct svm_softc*,int,int ,int) ;
 int svm_enable_intercept (struct svm_softc*,int,int ,int) ;
 struct vmcb_ctrl* svm_get_vmcb_ctrl (struct svm_softc*,int) ;
 struct vmcb_state* svm_get_vmcb_state (struct svm_softc*,int) ;
 scalar_t__ vcpu_trace_exceptions (int ,int) ;

__attribute__((used)) static void
vmcb_init(struct svm_softc *sc, int vcpu, uint64_t iopm_base_pa,
    uint64_t msrpm_base_pa, uint64_t np_pml4)
{
 struct vmcb_ctrl *ctrl;
 struct vmcb_state *state;
 uint32_t mask;
 int n;

 ctrl = svm_get_vmcb_ctrl(sc, vcpu);
 state = svm_get_vmcb_state(sc, vcpu);

 ctrl->iopm_base_pa = iopm_base_pa;
 ctrl->msrpm_base_pa = msrpm_base_pa;


 ctrl->np_enable = 1;
 ctrl->n_cr3 = np_pml4;





 for (n = 0; n < 16; n++) {
  mask = (BIT(n) << 16) | BIT(n);
  if (n == 0 || n == 2 || n == 3 || n == 4 || n == 8)
   svm_disable_intercept(sc, vcpu, VMCB_CR_INTCPT, mask);
  else
   svm_enable_intercept(sc, vcpu, VMCB_CR_INTCPT, mask);
 }






 if (vcpu_trace_exceptions(sc->vm, vcpu)) {
  for (n = 0; n < 32; n++) {



   if (n == 2 || n == 9) {
    continue;
   }
   svm_enable_intercept(sc, vcpu, VMCB_EXC_INTCPT, BIT(n));
  }
 } else {
  svm_enable_intercept(sc, vcpu, VMCB_EXC_INTCPT, BIT(IDT_MC));
 }


 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_IO);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_MSR);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_CPUID);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_INTR);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_INIT);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_NMI);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_SMI);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_SHUTDOWN);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT,
     VMCB_INTCPT_FERR_FREEZE);

 svm_enable_intercept(sc, vcpu, VMCB_CTRL2_INTCPT, VMCB_INTCPT_MONITOR);
 svm_enable_intercept(sc, vcpu, VMCB_CTRL2_INTCPT, VMCB_INTCPT_MWAIT);





 svm_enable_intercept(sc, vcpu, VMCB_CTRL2_INTCPT, VMCB_INTCPT_VMRUN);




 ctrl->asid = 0;







 ctrl->v_intr_masking = 1;


 ctrl->lbr_virt_en = 1;
 state->dbgctl = BIT(0);


 state->efer = EFER_SVM;


 state->g_pat = PAT_VALUE(0, PAT_WRITE_BACK) |
     PAT_VALUE(1, PAT_WRITE_THROUGH) |
     PAT_VALUE(2, PAT_UNCACHED) |
     PAT_VALUE(3, PAT_UNCACHEABLE) |
     PAT_VALUE(4, PAT_WRITE_BACK) |
     PAT_VALUE(5, PAT_WRITE_THROUGH) |
     PAT_VALUE(6, PAT_UNCACHED) |
     PAT_VALUE(7, PAT_UNCACHEABLE);


 state->dr6 = DBREG_DR6_RESERVED1;
 state->dr7 = DBREG_DR7_RESERVED1;
}

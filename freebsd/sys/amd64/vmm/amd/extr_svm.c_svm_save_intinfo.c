
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmcb_ctrl {int exitintinfo; } ;
struct svm_softc {int vm; } ;


 int VCPU_CTR2 (int ,int,char*,int ,int ) ;
 int VCPU_EXITINTINFO ;
 int VMCB_EXITINTINFO_VALID (int ) ;
 int VMCB_EXITINTINFO_VECTOR (int ) ;
 struct vmcb_ctrl* svm_get_vmcb_ctrl (struct svm_softc*,int) ;
 int vm_exit_intinfo (int ,int,int ) ;
 int vmm_stat_incr (int ,int,int ,int) ;

__attribute__((used)) static void
svm_save_intinfo(struct svm_softc *svm_sc, int vcpu)
{
 struct vmcb_ctrl *ctrl;
 uint64_t intinfo;

 ctrl = svm_get_vmcb_ctrl(svm_sc, vcpu);
 intinfo = ctrl->exitintinfo;
 if (!VMCB_EXITINTINFO_VALID(intinfo))
  return;







 VCPU_CTR2(svm_sc->vm, vcpu, "SVM:Pending INTINFO(0x%lx), vector=%d.\n",
  intinfo, VMCB_EXITINTINFO_VECTOR(intinfo));
 vmm_stat_incr(svm_sc->vm, vcpu, VCPU_EXITINTINFO, 1);
 vm_exit_intinfo(svm_sc->vm, vcpu, intinfo);
}

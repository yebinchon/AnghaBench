
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmcb_ctrl {int * intercept; } ;
struct svm_softc {int vm; } ;


 int KASSERT (int,char*) ;
 int VCPU_CTR3 (int ,int,char*,int,int ,int ) ;
 int VMCB_CACHE_I ;
 struct vmcb_ctrl* svm_get_vmcb_ctrl (struct svm_softc*,int) ;
 int svm_set_dirty (struct svm_softc*,int,int ) ;

__attribute__((used)) static __inline void
svm_set_intercept(struct svm_softc *sc, int vcpu, int idx, uint32_t bitmask,
    int enabled)
{
 struct vmcb_ctrl *ctrl;
 uint32_t oldval;

 KASSERT(idx >=0 && idx < 5, ("invalid intercept index %d", idx));

 ctrl = svm_get_vmcb_ctrl(sc, vcpu);
 oldval = ctrl->intercept[idx];

 if (enabled)
  ctrl->intercept[idx] |= bitmask;
 else
  ctrl->intercept[idx] &= ~bitmask;

 if (ctrl->intercept[idx] != oldval) {
  svm_set_dirty(sc, vcpu, VMCB_CACHE_I);
  VCPU_CTR3(sc->vm, vcpu, "intercept[%d] modified "
      "from %#x to %#x", idx, oldval, ctrl->intercept[idx]);
 }
}

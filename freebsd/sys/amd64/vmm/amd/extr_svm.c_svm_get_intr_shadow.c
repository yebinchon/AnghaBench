
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmcb_ctrl {int intr_shadow; } ;
struct svm_softc {int dummy; } ;


 struct vmcb_ctrl* svm_get_vmcb_ctrl (struct svm_softc*,int) ;

__attribute__((used)) static int
svm_get_intr_shadow(struct svm_softc *sc, int vcpu, uint64_t *val)
{
 struct vmcb_ctrl *ctrl;

 ctrl = svm_get_vmcb_ctrl(sc, vcpu);
 *val = ctrl->intr_shadow;
 return (0);
}

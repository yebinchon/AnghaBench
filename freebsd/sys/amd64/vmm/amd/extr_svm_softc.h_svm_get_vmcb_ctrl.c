
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcb_ctrl {int dummy; } ;
struct svm_softc {TYPE_2__* vcpu; } ;
struct TYPE_3__ {struct vmcb_ctrl ctrl; } ;
struct TYPE_4__ {TYPE_1__ vmcb; } ;



__attribute__((used)) static __inline struct vmcb_ctrl *
svm_get_vmcb_ctrl(struct svm_softc *sc, int vcpu)
{

 return (&(sc->vcpu[vcpu].vmcb.ctrl));
}

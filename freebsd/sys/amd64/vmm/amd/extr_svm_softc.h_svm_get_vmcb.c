
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcb {int dummy; } ;
struct svm_softc {TYPE_1__* vcpu; } ;
struct TYPE_2__ {struct vmcb vmcb; } ;



__attribute__((used)) static __inline struct vmcb *
svm_get_vmcb(struct svm_softc *sc, int vcpu)
{

 return (&(sc->vcpu[vcpu].vmcb));
}

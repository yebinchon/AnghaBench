
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_vcpu {int dummy; } ;
struct svm_softc {struct svm_vcpu* vcpu; } ;



__attribute__((used)) static __inline struct svm_vcpu *
svm_get_vcpu(struct svm_softc *sc, int vcpu)
{

 return (&(sc->vcpu[vcpu]));
}

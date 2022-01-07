
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svm_softc {TYPE_1__* vcpu; } ;
struct svm_regctx {int dummy; } ;
struct TYPE_2__ {struct svm_regctx swctx; } ;



__attribute__((used)) static __inline struct svm_regctx *
svm_get_guest_regctx(struct svm_softc *sc, int vcpu)
{

 return (&(sc->vcpu[vcpu].swctx));
}

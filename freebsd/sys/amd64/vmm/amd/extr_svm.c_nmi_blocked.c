
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_softc {int dummy; } ;


 int VMCB_CTRL1_INTCPT ;
 int VMCB_INTCPT_IRET ;
 int svm_get_intercept (struct svm_softc*,int,int ,int ) ;

__attribute__((used)) static int
nmi_blocked(struct svm_softc *sc, int vcpu)
{
 int blocked;

 blocked = svm_get_intercept(sc, vcpu, VMCB_CTRL1_INTCPT,
     VMCB_INTCPT_IRET);
 return (blocked);
}

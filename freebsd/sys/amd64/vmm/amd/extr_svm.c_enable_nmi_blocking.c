
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_softc {int vm; } ;


 int KASSERT (int,char*) ;
 int VCPU_CTR0 (int ,int,char*) ;
 int VMCB_CTRL1_INTCPT ;
 int VMCB_INTCPT_IRET ;
 int nmi_blocked (struct svm_softc*,int) ;
 int svm_enable_intercept (struct svm_softc*,int,int ,int ) ;

__attribute__((used)) static void
enable_nmi_blocking(struct svm_softc *sc, int vcpu)
{

 KASSERT(!nmi_blocked(sc, vcpu), ("vNMI already blocked"));
 VCPU_CTR0(sc->vm, vcpu, "vNMI blocking enabled");
 svm_enable_intercept(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_IRET);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_softc {int dummy; } ;


 int ENOENT ;
 int VMCB_CTRL1_INTCPT ;
 int VMCB_INTCPT_HLT ;
 int VMCB_INTCPT_PAUSE ;



 int svm_get_intercept (struct svm_softc*,int,int ,int ) ;

__attribute__((used)) static int
svm_getcap(void *arg, int vcpu, int type, int *retval)
{
 struct svm_softc *sc;
 int error;

 sc = arg;
 error = 0;

 switch (type) {
 case 130:
  *retval = svm_get_intercept(sc, vcpu, VMCB_CTRL1_INTCPT,
      VMCB_INTCPT_HLT);
  break;
 case 129:
  *retval = svm_get_intercept(sc, vcpu, VMCB_CTRL1_INTCPT,
      VMCB_INTCPT_PAUSE);
  break;
 case 128:
  *retval = 1;
  break;
 default:
  error = ENOENT;
  break;
 }
 return (error);
}

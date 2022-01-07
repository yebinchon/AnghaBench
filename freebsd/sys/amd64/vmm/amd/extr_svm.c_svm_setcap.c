
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_softc {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int VMCB_CTRL1_INTCPT ;
 int VMCB_INTCPT_HLT ;
 int VMCB_INTCPT_PAUSE ;



 int svm_set_intercept (struct svm_softc*,int,int ,int ,int) ;

__attribute__((used)) static int
svm_setcap(void *arg, int vcpu, int type, int val)
{
 struct svm_softc *sc;
 int error;

 sc = arg;
 error = 0;
 switch (type) {
 case 130:
  svm_set_intercept(sc, vcpu, VMCB_CTRL1_INTCPT,
      VMCB_INTCPT_HLT, val);
  break;
 case 129:
  svm_set_intercept(sc, vcpu, VMCB_CTRL1_INTCPT,
      VMCB_INTCPT_PAUSE, val);
  break;
 case 128:

  if (val == 0)
   error = EINVAL;
  break;
 default:
  error = ENOENT;
  break;
 }
 return (error);
}

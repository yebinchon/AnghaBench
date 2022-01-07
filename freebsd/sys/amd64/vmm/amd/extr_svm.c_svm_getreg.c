
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct svm_softc {int vm; } ;
typedef int register_t ;


 int EINVAL ;
 int VCPU_CTR1 (int ,int,char*,int) ;
 int VM_REG_GUEST_INTR_SHADOW ;
 int svm_get_guest_regctx (struct svm_softc*,int) ;
 int svm_get_intr_shadow (struct svm_softc*,int,int *) ;
 int * swctx_regptr (int ,int) ;
 scalar_t__ vmcb_read (struct svm_softc*,int,int,int *) ;

__attribute__((used)) static int
svm_getreg(void *arg, int vcpu, int ident, uint64_t *val)
{
 struct svm_softc *svm_sc;
 register_t *reg;

 svm_sc = arg;

 if (ident == VM_REG_GUEST_INTR_SHADOW) {
  return (svm_get_intr_shadow(svm_sc, vcpu, val));
 }

 if (vmcb_read(svm_sc, vcpu, ident, val) == 0) {
  return (0);
 }

 reg = swctx_regptr(svm_get_guest_regctx(svm_sc, vcpu), ident);

 if (reg != ((void*)0)) {
  *val = *reg;
  return (0);
 }

 VCPU_CTR1(svm_sc->vm, vcpu, "svm_getreg: unknown register %#x", ident);
 return (EINVAL);
}

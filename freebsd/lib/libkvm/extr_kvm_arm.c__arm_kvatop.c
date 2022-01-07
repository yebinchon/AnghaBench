
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct vmstate {int* l1pt; } ;
typedef int pte ;
typedef int off_t ;
struct TYPE_7__ {int program; int pmfd; struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;
typedef int kvaddr_t ;
typedef int arm_pt_entry_t ;
typedef int arm_physaddr_t ;
typedef int arm_pd_entry_t ;


 int ARM_L1_C_ADDR_MASK ;
 size_t ARM_L1_IDX (int) ;
 int ARM_L1_S_ADDR_MASK ;
 int ARM_L1_S_OFFSET ;
 int ARM_L1_S_SIZE ;
 int ARM_L2_L_FRAME ;
 int ARM_L2_L_OFFSET ;
 int ARM_L2_L_SIZE ;
 int ARM_L2_S_FRAME ;
 int ARM_L2_S_OFFSET ;
 int ARM_L2_TYPE_L ;
 int ARM_L2_TYPE_MASK ;
 int ARM_PAGE_SIZE ;
 int _kvm32toh (TYPE_1__*,int) ;
 int _kvm_err (TYPE_1__*,int ,char*,int ) ;
 int _kvm_pa2off (TYPE_1__*,int,int*,int ) ;
 int _kvm_syserr (TYPE_1__*,int ,char*) ;
 scalar_t__ l1pte_section_p (int) ;
 int l1pte_valid (int) ;
 int l2pte_index (int) ;
 int l2pte_valid (int) ;
 int pread (int ,int*,int,int) ;

__attribute__((used)) static int
_arm_kvatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{
 struct vmstate *vm = kd->vmst;
 arm_pd_entry_t pd;
 arm_pt_entry_t pte;
 arm_physaddr_t pte_pa;
 off_t pte_off;

 if (vm->l1pt == ((void*)0))
  return (_kvm_pa2off(kd, va, pa, ARM_PAGE_SIZE));
 pd = _kvm32toh(kd, vm->l1pt[ARM_L1_IDX(va)]);
 if (!l1pte_valid(pd))
  goto invalid;
 if (l1pte_section_p(pd)) {

  *pa = (pd & ARM_L1_S_ADDR_MASK) + (va & ARM_L1_S_OFFSET);
  return (_kvm_pa2off(kd, *pa, pa, ARM_L1_S_SIZE));
 }
 pte_pa = (pd & ARM_L1_C_ADDR_MASK) + l2pte_index(va) * sizeof(pte);
 _kvm_pa2off(kd, pte_pa, &pte_off, ARM_L1_S_SIZE);
 if (pread(kd->pmfd, &pte, sizeof(pte), pte_off) != sizeof(pte)) {
  _kvm_syserr(kd, kd->program, "_arm_kvatop: pread");
  goto invalid;
 }
 pte = _kvm32toh(kd, pte);
 if (!l2pte_valid(pte)) {
  goto invalid;
 }
 if ((pte & ARM_L2_TYPE_MASK) == ARM_L2_TYPE_L) {
  *pa = (pte & ARM_L2_L_FRAME) | (va & ARM_L2_L_OFFSET);
  return (_kvm_pa2off(kd, *pa, pa, ARM_L2_L_SIZE));
 }
 *pa = (pte & ARM_L2_S_FRAME) | (va & ARM_L2_S_OFFSET);
 return (_kvm_pa2off(kd, *pa, pa, ARM_PAGE_SIZE));
invalid:
 _kvm_err(kd, 0, "Invalid address (%jx)", (uintmax_t)va);
 return 0;
}

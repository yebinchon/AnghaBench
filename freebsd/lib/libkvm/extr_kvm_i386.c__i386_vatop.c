
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct vmstate {scalar_t__ PTD; } ;
typedef int pte ;
typedef int off_t ;
struct TYPE_6__ {int program; int pmfd; struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;
typedef size_t kvaddr_t ;
typedef int i386_pte_t ;
typedef int i386_physaddr_t ;
typedef int i386_pde_t ;


 int I386_NBPDR ;
 int I386_NPTEPG ;
 size_t I386_PAGE_MASK ;
 size_t I386_PAGE_PS_MASK ;
 size_t I386_PAGE_SHIFT ;
 int I386_PAGE_SIZE ;
 size_t I386_PDRSHIFT ;
 int I386_PG_FRAME ;
 int I386_PG_PS ;
 int I386_PG_PS_FRAME ;
 int I386_PG_V ;
 int _kvm_err (TYPE_1__*,int ,char*,...) ;
 size_t _kvm_pa2off (TYPE_1__*,int,int *) ;
 int _kvm_syserr (TYPE_1__*,int ,char*) ;
 int le32toh (int) ;
 int pread (int ,int*,int,int ) ;

__attribute__((used)) static int
_i386_vatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{
 struct vmstate *vm;
 i386_physaddr_t offset;
 i386_physaddr_t pte_pa;
 i386_pde_t pde;
 i386_pte_t pte;
 kvaddr_t pdeindex;
 kvaddr_t pteindex;
 size_t s;
 i386_physaddr_t a;
 off_t ofs;
 i386_pde_t *PTD;

 vm = kd->vmst;
 PTD = (i386_pde_t *)vm->PTD;
 offset = va & I386_PAGE_MASK;





 if (PTD == ((void*)0)) {
  s = _kvm_pa2off(kd, va, pa);
  if (s == 0) {
   _kvm_err(kd, kd->program,
       "_i386_vatop: bootstrap data not in dump");
   goto invalid;
  } else
   return (I386_PAGE_SIZE - offset);
 }

 pdeindex = va >> I386_PDRSHIFT;
 pde = le32toh(PTD[pdeindex]);
 if ((pde & I386_PG_V) == 0) {
  _kvm_err(kd, kd->program, "_i386_vatop: pde not valid");
  goto invalid;
 }

 if (pde & I386_PG_PS) {





  offset = va & I386_PAGE_PS_MASK;
  a = (pde & I386_PG_PS_FRAME) + offset;
  s = _kvm_pa2off(kd, a, pa);
  if (s == 0) {
   _kvm_err(kd, kd->program,
       "_i386_vatop: 4MB page address not in dump");
   goto invalid;
  }
  return (I386_NBPDR - offset);
 }

 pteindex = (va >> I386_PAGE_SHIFT) & (I386_NPTEPG - 1);
 pte_pa = (pde & I386_PG_FRAME) + (pteindex * sizeof(pte));

 s = _kvm_pa2off(kd, pte_pa, &ofs);
 if (s < sizeof(pte)) {
  _kvm_err(kd, kd->program, "_i386_vatop: pte_pa not found");
  goto invalid;
 }


 if (pread(kd->pmfd, &pte, sizeof(pte), ofs) != sizeof(pte)) {
  _kvm_syserr(kd, kd->program, "_i386_vatop: pread");
  goto invalid;
 }
 pte = le32toh(pte);
 if ((pte & I386_PG_V) == 0) {
  _kvm_err(kd, kd->program, "_kvm_kvatop: pte not valid");
  goto invalid;
 }

 a = (pte & I386_PG_FRAME) + offset;
 s = _kvm_pa2off(kd, a, pa);
 if (s == 0) {
  _kvm_err(kd, kd->program, "_i386_vatop: address not in dump");
  goto invalid;
 } else
  return (I386_PAGE_SIZE - offset);

invalid:
 _kvm_err(kd, 0, "invalid address (0x%jx)", (uintmax_t)va);
 return (0);
}

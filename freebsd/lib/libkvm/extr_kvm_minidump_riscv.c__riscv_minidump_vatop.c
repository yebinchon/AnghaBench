
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_7__ {scalar_t__ dmapbase; scalar_t__ dmapend; scalar_t__ dmapphys; scalar_t__ kernbase; int pmapsize; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef scalar_t__ riscv_pt_entry_t ;
typedef int riscv_physaddr_t ;
typedef int off_t ;
typedef int l3 ;
struct TYPE_8__ {int program; struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef scalar_t__ kvaddr_t ;


 scalar_t__ RISCV_L3_SHIFT ;
 scalar_t__ RISCV_PAGE_MASK ;
 int RISCV_PAGE_SIZE ;
 scalar_t__ RISCV_PTE_PPN0_S ;
 scalar_t__ RISCV_PTE_RWX ;
 scalar_t__ RISCV_PTE_V ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int _kvm_pt_find (TYPE_2__*,int,int) ;
 scalar_t__ _riscv_pte_get (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int
_riscv_minidump_vatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{
 struct vmstate *vm;
 riscv_physaddr_t offset;
 riscv_pt_entry_t l3;
 kvaddr_t l3_index;
 riscv_physaddr_t a;
 off_t ofs;

 vm = kd->vmst;
 offset = va & RISCV_PAGE_MASK;

 if (va >= vm->hdr.dmapbase && va < vm->hdr.dmapend) {
  a = (va - vm->hdr.dmapbase + vm->hdr.dmapphys) &
      ~RISCV_PAGE_MASK;
  ofs = _kvm_pt_find(kd, a, RISCV_PAGE_SIZE);
  if (ofs == -1) {
   _kvm_err(kd, kd->program, "_riscv_minidump_vatop: "
       "direct map address 0x%jx not in minidump",
       (uintmax_t)va);
   goto invalid;
  }
  *pa = ofs + offset;
  return (RISCV_PAGE_SIZE - offset);
 } else if (va >= vm->hdr.kernbase) {
  l3_index = (va - vm->hdr.kernbase) >> RISCV_L3_SHIFT;
  if (l3_index >= vm->hdr.pmapsize / sizeof(l3))
   goto invalid;
  l3 = _riscv_pte_get(kd, l3_index);
  if ((l3 & RISCV_PTE_V) == 0 || (l3 & RISCV_PTE_RWX) == 0) {
   _kvm_err(kd, kd->program,
       "_riscv_minidump_vatop: pte not valid");
   goto invalid;
  }
  a = (l3 >> RISCV_PTE_PPN0_S) << RISCV_L3_SHIFT;
  ofs = _kvm_pt_find(kd, a, RISCV_PAGE_SIZE);
  if (ofs == -1) {
   _kvm_err(kd, kd->program, "_riscv_minidump_vatop: "
       "physical address 0x%jx not in minidump",
       (uintmax_t)a);
   goto invalid;
  }
  *pa = ofs + offset;
  return (RISCV_PAGE_SIZE - offset);
 } else {
  _kvm_err(kd, kd->program,
     "_riscv_minidump_vatop: virtual address 0x%jx not minidumped",
      (uintmax_t)va);
  goto invalid;
 }

invalid:
 _kvm_err(kd, 0, "invalid address (0x%jx)", (uintmax_t)va);
 return (0);
}

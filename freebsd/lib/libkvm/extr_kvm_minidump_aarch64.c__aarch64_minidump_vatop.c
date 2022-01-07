
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_7__ {scalar_t__ dmapbase; scalar_t__ dmapend; scalar_t__ dmapphys; scalar_t__ kernbase; int pmapsize; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef int off_t ;
typedef int l3 ;
struct TYPE_8__ {int program; struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef scalar_t__ kvaddr_t ;
typedef int aarch64_pte_t ;
typedef int aarch64_physaddr_t ;


 int AARCH64_ATTR_DESCR_MASK ;
 int AARCH64_ATTR_MASK ;
 int AARCH64_L3_PAGE ;
 scalar_t__ AARCH64_L3_SHIFT ;
 scalar_t__ AARCH64_PAGE_MASK ;
 int AARCH64_PAGE_SIZE ;
 int _aarch64_pte_get (TYPE_2__*,scalar_t__) ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int _kvm_pt_find (TYPE_2__*,int,int) ;

__attribute__((used)) static int
_aarch64_minidump_vatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{
 struct vmstate *vm;
 aarch64_physaddr_t offset;
 aarch64_pte_t l3;
 kvaddr_t l3_index;
 aarch64_physaddr_t a;
 off_t ofs;

 vm = kd->vmst;
 offset = va & AARCH64_PAGE_MASK;

 if (va >= vm->hdr.dmapbase && va < vm->hdr.dmapend) {
  a = (va - vm->hdr.dmapbase + vm->hdr.dmapphys) &
      ~AARCH64_PAGE_MASK;
  ofs = _kvm_pt_find(kd, a, AARCH64_PAGE_SIZE);
  if (ofs == -1) {
   _kvm_err(kd, kd->program, "_aarch64_minidump_vatop: "
       "direct map address 0x%jx not in minidump",
       (uintmax_t)va);
   goto invalid;
  }
  *pa = ofs + offset;
  return (AARCH64_PAGE_SIZE - offset);
 } else if (va >= vm->hdr.kernbase) {
  l3_index = (va - vm->hdr.kernbase) >> AARCH64_L3_SHIFT;
  if (l3_index >= vm->hdr.pmapsize / sizeof(l3))
   goto invalid;
  l3 = _aarch64_pte_get(kd, l3_index);
  if ((l3 & AARCH64_ATTR_DESCR_MASK) != AARCH64_L3_PAGE) {
   _kvm_err(kd, kd->program,
       "_aarch64_minidump_vatop: pde not valid");
   goto invalid;
  }
  a = l3 & ~AARCH64_ATTR_MASK;
  ofs = _kvm_pt_find(kd, a, AARCH64_PAGE_SIZE);
  if (ofs == -1) {
   _kvm_err(kd, kd->program, "_aarch64_minidump_vatop: "
       "physical address 0x%jx not in minidump",
       (uintmax_t)a);
   goto invalid;
  }
  *pa = ofs + offset;
  return (AARCH64_PAGE_SIZE - offset);
 } else {
  _kvm_err(kd, kd->program,
     "_aarch64_minidump_vatop: virtual address 0x%jx not minidumped",
      (uintmax_t)va);
  goto invalid;
 }

invalid:
 _kvm_err(kd, 0, "invalid address (0x%jx)", (uintmax_t)va);
 return (0);
}

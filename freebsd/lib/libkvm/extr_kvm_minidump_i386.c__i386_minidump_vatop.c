
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_7__ {int kernbase; int ptesize; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef int pte ;
typedef int off_t ;
struct TYPE_8__ {int program; struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef int kvaddr_t ;
typedef int i386_pte_t ;
typedef int i386_physaddr_t ;


 int I386_PAGE_MASK ;
 int I386_PAGE_SHIFT ;
 int I386_PAGE_SIZE ;
 int I386_PG_FRAME ;
 int I386_PG_V ;
 int _i386_pte_get (TYPE_2__*,int) ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int _kvm_pt_find (TYPE_2__*,int,int) ;

__attribute__((used)) static int
_i386_minidump_vatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{
 struct vmstate *vm;
 i386_physaddr_t offset;
 i386_pte_t pte;
 kvaddr_t pteindex;
 i386_physaddr_t a;
 off_t ofs;

 vm = kd->vmst;
 offset = va & I386_PAGE_MASK;

 if (va >= vm->hdr.kernbase) {
  pteindex = (va - vm->hdr.kernbase) >> I386_PAGE_SHIFT;
  if (pteindex >= vm->hdr.ptesize / sizeof(pte))
   goto invalid;
  pte = _i386_pte_get(kd, pteindex);
  if ((pte & I386_PG_V) == 0) {
   _kvm_err(kd, kd->program,
       "_i386_minidump_vatop: pte not valid");
   goto invalid;
  }
  a = pte & I386_PG_FRAME;
  ofs = _kvm_pt_find(kd, a, I386_PAGE_SIZE);
  if (ofs == -1) {
   _kvm_err(kd, kd->program,
     "_i386_minidump_vatop: physical address 0x%jx not in minidump",
       (uintmax_t)a);
   goto invalid;
  }
  *pa = ofs + offset;
  return (I386_PAGE_SIZE - offset);
 } else {
  _kvm_err(kd, kd->program,
     "_i386_minidump_vatop: virtual address 0x%jx not minidumped",
      (uintmax_t)va);
  goto invalid;
 }

invalid:
 _kvm_err(kd, 0, "invalid address (0x%jx)", (uintmax_t)va);
 return (0);
}

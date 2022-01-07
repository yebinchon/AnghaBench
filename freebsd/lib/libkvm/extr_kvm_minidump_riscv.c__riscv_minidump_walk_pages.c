
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ u_long ;
struct TYPE_6__ {int pmapsize; scalar_t__ kernbase; scalar_t__ dmapbase; scalar_t__ dmapend; int bitmapsize; } ;
struct vmstate {TYPE_1__ hdr; } ;
struct kvm_bitmap {int dummy; } ;
typedef scalar_t__ riscv_pt_entry_t ;
typedef int kvm_walk_pages_cb_t ;
struct TYPE_7__ {struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;


 scalar_t__ RISCV_L3_SHIFT ;
 scalar_t__ RISCV_PAGE_SIZE ;
 scalar_t__ RISCV_PTE_PPN0_S ;
 scalar_t__ RISCV_PTE_RWX ;
 scalar_t__ RISCV_PTE_V ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int _kvm_bitmap_deinit (struct kvm_bitmap*) ;
 int _kvm_bitmap_init (struct kvm_bitmap*,int ,scalar_t__*) ;
 scalar_t__ _kvm_bitmap_next (struct kvm_bitmap*,scalar_t__*) ;
 int _kvm_visit_cb (TYPE_2__*,int *,void*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,int ) ;
 int _riscv_entry_to_prot (scalar_t__) ;
 scalar_t__ _riscv_pte_get (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int
_riscv_minidump_walk_pages(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *arg)
{
 struct vmstate *vm = kd->vmst;
 u_long nptes = vm->hdr.pmapsize / sizeof(riscv_pt_entry_t);
 u_long bmindex, dva, pa, pteindex, va;
 struct kvm_bitmap bm;
 vm_prot_t prot;
 int ret = 0;

 if (!_kvm_bitmap_init(&bm, vm->hdr.bitmapsize, &bmindex))
  return (0);

 for (pteindex = 0; pteindex < nptes; pteindex++) {
  riscv_pt_entry_t pte = _riscv_pte_get(kd, pteindex);

  if (((pte & RISCV_PTE_V) == 0) ||
      ((pte & RISCV_PTE_RWX) == 0))
   continue;

  va = vm->hdr.kernbase + (pteindex << RISCV_L3_SHIFT);
  pa = (pte >> RISCV_PTE_PPN0_S) << RISCV_L3_SHIFT;
  dva = vm->hdr.dmapbase + pa;
  if (!_kvm_visit_cb(kd, cb, arg, pa, va, dva,
      _riscv_entry_to_prot(pte), RISCV_PAGE_SIZE, 0)) {
   goto out;
  }
 }

 while (_kvm_bitmap_next(&bm, &bmindex)) {
  pa = bmindex * RISCV_PAGE_SIZE;
  dva = vm->hdr.dmapbase + pa;
  if (vm->hdr.dmapend < (dva + RISCV_PAGE_SIZE))
   break;
  va = 0;
  prot = VM_PROT_READ | VM_PROT_WRITE;
  if (!_kvm_visit_cb(kd, cb, arg, pa, va, dva,
      prot, RISCV_PAGE_SIZE, 0)) {
   goto out;
  }
 }
 ret = 1;

out:
 _kvm_bitmap_deinit(&bm);
 return (ret);
}

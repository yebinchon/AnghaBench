
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int u_long ;
struct mips_iter {int dummy; } ;
typedef int kvm_walk_pages_cb_t ;
struct TYPE_6__ {scalar_t__* e_ident; } ;
struct TYPE_7__ {TYPE_1__ nlehdr; } ;
typedef TYPE_2__ kvm_t ;


 size_t EI_CLASS ;
 scalar_t__ ELFCLASS64 ;
 int MIPS_PAGE_SIZE ;
 int _kvm_visit_cb (TYPE_2__*,int *,void*,int ,int ,int ,int ,int ,int ) ;
 int _mips_iterator_init (struct mips_iter*,TYPE_2__*) ;
 scalar_t__ _mips_iterator_next (struct mips_iter*,int *,int *,int *,int *) ;

__attribute__((used)) static int
_mips_minidump_walk_pages(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *arg)
{
 struct mips_iter it;
 u_long dva, pa, va;
 vm_prot_t prot;


 if (kd->nlehdr.e_ident[EI_CLASS] == ELFCLASS64) {



 } else {


 }

 _mips_iterator_init(&it, kd);
 while (_mips_iterator_next(&it, &pa, &va, &dva, &prot)) {
  if (!_kvm_visit_cb(kd, cb, arg, pa, va, dva,
      prot, MIPS_PAGE_SIZE, 0)) {
   return (0);
  }
 }
 return (1);
}

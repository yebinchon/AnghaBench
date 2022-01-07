
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptesize; scalar_t__ paemode; } ;
struct vmstate {TYPE_1__ hdr; } ;
struct i386_iter {int nptes; scalar_t__ pteindex; TYPE_2__* kd; } ;
struct TYPE_5__ {struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef int i386_pte_t ;
typedef int i386_pte_pae_t ;



__attribute__((used)) static void
_i386_iterator_init(struct i386_iter *it, kvm_t *kd)
{
 struct vmstate *vm = kd->vmst;

 it->kd = kd;
 it->pteindex = 0;
 if (vm->hdr.paemode) {
  it->nptes = vm->hdr.ptesize / sizeof(i386_pte_pae_t);
 } else {
  it->nptes = vm->hdr.ptesize / sizeof(i386_pte_t);
 }
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vmstate {size_t phnum; TYPE_2__* phdr; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {scalar_t__ rawdump; struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;
struct TYPE_5__ {scalar_t__ p_paddr; scalar_t__ p_memsz; scalar_t__ p_offset; } ;
typedef TYPE_2__ GElf_Phdr ;


 scalar_t__ I386_PAGE_MASK ;
 size_t I386_PAGE_SIZE ;

__attribute__((used)) static size_t
_kvm_pa2off(kvm_t *kd, uint64_t pa, off_t *ofs)
{
 struct vmstate *vm = kd->vmst;
 GElf_Phdr *p;
 size_t n;

 if (kd->rawdump) {
  *ofs = pa;
  return (I386_PAGE_SIZE - (pa & I386_PAGE_MASK));
 }

 p = vm->phdr;
 n = vm->phnum;
 while (n && (pa < p->p_paddr || pa >= p->p_paddr + p->p_memsz))
  p++, n--;
 if (n == 0)
  return (0);
 *ofs = (pa - p->p_paddr) + p->p_offset;
 return (I386_PAGE_SIZE - (pa & I386_PAGE_MASK));
}

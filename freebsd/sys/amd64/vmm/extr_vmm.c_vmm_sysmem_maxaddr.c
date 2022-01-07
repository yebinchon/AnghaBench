
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct vm {struct mem_map* mem_maps; } ;
struct mem_map {scalar_t__ gpa; scalar_t__ len; } ;


 int VM_MAX_MEMMAPS ;
 scalar_t__ sysmem_mapping (struct vm*,struct mem_map*) ;

vm_paddr_t
vmm_sysmem_maxaddr(struct vm *vm)
{
 struct mem_map *mm;
 vm_paddr_t maxaddr;
 int i;

 maxaddr = 0;
 for (i = 0; i < VM_MAX_MEMMAPS; i++) {
  mm = &vm->mem_maps[i];
  if (sysmem_mapping(vm, mm)) {
   if (maxaddr < mm->gpa + mm->len)
    maxaddr = mm->gpa + mm->len;
  }
 }
 return (maxaddr);
}

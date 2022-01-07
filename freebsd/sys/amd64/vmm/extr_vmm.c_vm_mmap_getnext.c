
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_ooffset_t ;
struct vm {struct mem_map* mem_maps; } ;
struct mem_map {scalar_t__ len; scalar_t__ gpa; int segid; int prot; int flags; int segoff; } ;


 int ENOENT ;
 int VM_MAX_MEMMAPS ;

int
vm_mmap_getnext(struct vm *vm, vm_paddr_t *gpa, int *segid,
    vm_ooffset_t *segoff, size_t *len, int *prot, int *flags)
{
 struct mem_map *mm, *mmnext;
 int i;

 mmnext = ((void*)0);
 for (i = 0; i < VM_MAX_MEMMAPS; i++) {
  mm = &vm->mem_maps[i];
  if (mm->len == 0 || mm->gpa < *gpa)
   continue;
  if (mmnext == ((void*)0) || mm->gpa < mmnext->gpa)
   mmnext = mm;
 }

 if (mmnext != ((void*)0)) {
  *gpa = mmnext->gpa;
  if (segid)
   *segid = mmnext->segid;
  if (segoff)
   *segoff = mmnext->segoff;
  if (len)
   *len = mmnext->len;
  if (prot)
   *prot = mmnext->prot;
  if (flags)
   *flags = mmnext->flags;
  return (0);
 } else {
  return (ENOENT);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_object_t ;
struct vm {struct mem_seg* mem_segs; } ;
struct mem_seg {size_t len; int sysmem; int * object; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int OBJT_DEFAULT ;
 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 int VM_MAX_MEMSEGS ;
 int * vm_object_allocate (int ,size_t) ;

int
vm_alloc_memseg(struct vm *vm, int ident, size_t len, bool sysmem)
{
 struct mem_seg *seg;
 vm_object_t obj;

 if (ident < 0 || ident >= VM_MAX_MEMSEGS)
  return (EINVAL);

 if (len == 0 || (len & PAGE_MASK))
  return (EINVAL);

 seg = &vm->mem_segs[ident];
 if (seg->object != ((void*)0)) {
  if (seg->len == len && seg->sysmem == sysmem)
   return (EEXIST);
  else
   return (EINVAL);
 }

 obj = vm_object_allocate(OBJT_DEFAULT, len >> PAGE_SHIFT);
 if (obj == ((void*)0))
  return (ENOMEM);

 seg->len = len;
 seg->object = obj;
 seg->sysmem = sysmem;
 return (0);
}

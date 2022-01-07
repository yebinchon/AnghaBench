
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;
struct vm {struct mem_seg* mem_segs; } ;
struct mem_seg {size_t len; int sysmem; int object; } ;


 int EINVAL ;
 int VM_MAX_MEMSEGS ;

int
vm_get_memseg(struct vm *vm, int ident, size_t *len, bool *sysmem,
    vm_object_t *objptr)
{
 struct mem_seg *seg;

 if (ident < 0 || ident >= VM_MAX_MEMSEGS)
  return (EINVAL);

 seg = &vm->mem_segs[ident];
 if (len)
  *len = seg->len;
 if (sysmem)
  *sysmem = seg->sysmem;
 if (objptr)
  *objptr = seg->object;
 return (0);
}

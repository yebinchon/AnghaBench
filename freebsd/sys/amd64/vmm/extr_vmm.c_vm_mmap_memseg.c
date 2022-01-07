
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
struct vm {TYPE_1__* vmspace; struct mem_map* mem_maps; struct mem_seg* mem_segs; } ;
struct mem_seg {scalar_t__ len; int * object; } ;
struct mem_map {scalar_t__ len; int segid; int prot; int flags; scalar_t__ segoff; scalar_t__ gpa; } ;
struct TYPE_2__ {int vm_map; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 scalar_t__ PAGE_MASK ;
 int VMFS_NO_SPACE ;
 int VM_MAP_WIRE_NOHOLES ;
 int VM_MAP_WIRE_USER ;
 int VM_MAX_MEMMAPS ;
 int VM_MAX_MEMSEGS ;
 int VM_MEMMAP_F_WIRED ;
 int VM_PROT_ALL ;
 int vm_map_find (int *,int *,scalar_t__,scalar_t__*,size_t,int ,int ,int,int,int ) ;
 int vm_map_remove (int *,scalar_t__,int ) ;
 int vm_map_wire (int *,scalar_t__,int ,int) ;
 int vm_object_reference (int *) ;

int
vm_mmap_memseg(struct vm *vm, vm_paddr_t gpa, int segid, vm_ooffset_t first,
    size_t len, int prot, int flags)
{
 struct mem_seg *seg;
 struct mem_map *m, *map;
 vm_ooffset_t last;
 int i, error;

 if (prot == 0 || (prot & ~(VM_PROT_ALL)) != 0)
  return (EINVAL);

 if (flags & ~VM_MEMMAP_F_WIRED)
  return (EINVAL);

 if (segid < 0 || segid >= VM_MAX_MEMSEGS)
  return (EINVAL);

 seg = &vm->mem_segs[segid];
 if (seg->object == ((void*)0))
  return (EINVAL);

 last = first + len;
 if (first < 0 || first >= last || last > seg->len)
  return (EINVAL);

 if ((gpa | first | last) & PAGE_MASK)
  return (EINVAL);

 map = ((void*)0);
 for (i = 0; i < VM_MAX_MEMMAPS; i++) {
  m = &vm->mem_maps[i];
  if (m->len == 0) {
   map = m;
   break;
  }
 }

 if (map == ((void*)0))
  return (ENOSPC);

 error = vm_map_find(&vm->vmspace->vm_map, seg->object, first, &gpa,
     len, 0, VMFS_NO_SPACE, prot, prot, 0);
 if (error != KERN_SUCCESS)
  return (EFAULT);

 vm_object_reference(seg->object);

 if (flags & VM_MEMMAP_F_WIRED) {
  error = vm_map_wire(&vm->vmspace->vm_map, gpa, gpa + len,
      VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
  if (error != KERN_SUCCESS) {
   vm_map_remove(&vm->vmspace->vm_map, gpa, gpa + len);
   return (error == KERN_RESOURCE_SHORTAGE ? ENOMEM :
       EFAULT);
  }
 }

 map->gpa = gpa;
 map->len = len;
 map->segoff = first;
 map->segid = segid;
 map->prot = prot;
 map->flags = flags;
 return (0);
}

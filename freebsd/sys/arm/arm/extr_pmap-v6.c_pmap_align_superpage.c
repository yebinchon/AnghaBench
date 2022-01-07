
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {int flags; int pg_color; } ;


 int OBJ_COLORED ;
 int PTE1_OFFSET ;
 int PTE1_SIZE ;
 int pte1_roundup (int) ;
 int pte1_trunc (int) ;
 scalar_t__ ptoa (int ) ;

void
pmap_align_superpage(vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t size)
{
 vm_offset_t pte1_offset;

 if (size < PTE1_SIZE)
  return;
 if (object != ((void*)0) && (object->flags & OBJ_COLORED) != 0)
  offset += ptoa(object->pg_color);
 pte1_offset = offset & PTE1_OFFSET;
 if (size - ((PTE1_SIZE - pte1_offset) & PTE1_OFFSET) < PTE1_SIZE ||
     (*addr & PTE1_OFFSET) == pte1_offset)
  return;
 if ((*addr & PTE1_OFFSET) < pte1_offset)
  *addr = pte1_trunc(*addr) + pte1_offset;
 else
  *addr = pte1_roundup(*addr) + pte1_offset;
}

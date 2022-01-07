
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vmmap {int vm_size; } ;


 int PAGE_SIZE ;
 int kfree (struct vmmap*) ;
 int kva_free (int ,int) ;
 int pmap_qremove (int ,int) ;
 struct vmmap* vmmap_remove (void*) ;

void
vunmap(void *addr)
{
 struct vmmap *vmmap;

 vmmap = vmmap_remove(addr);
 if (vmmap == ((void*)0))
  return;
 pmap_qremove((vm_offset_t)addr, vmmap->vm_size / PAGE_SIZE);
 kva_free((vm_offset_t)addr, vmmap->vm_size);
 kfree(vmmap);
}

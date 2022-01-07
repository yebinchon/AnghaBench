
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vmmap {int vm_size; } ;


 int kfree (struct vmmap*) ;
 int pmap_unmapdev (int ,int ) ;
 struct vmmap* vmmap_remove (void*) ;

void
iounmap(void *addr)
{
 struct vmmap *vmmap;

 vmmap = vmmap_remove(addr);
 if (vmmap == ((void*)0))
  return;

 pmap_unmapdev((vm_offset_t)addr, vmmap->vm_size);

 kfree(vmmap);
}

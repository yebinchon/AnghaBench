
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmap {unsigned long vm_size; void* vm_addr; } ;


 int GFP_KERNEL ;
 int LIST_INSERT_HEAD (int *,struct vmmap*,int ) ;
 size_t VM_HASH (void*) ;
 struct vmmap* kmalloc (int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_next ;
 int * vmmaphead ;
 int vmmaplock ;

__attribute__((used)) static void
vmmap_add(void *addr, unsigned long size)
{
 struct vmmap *vmmap;

 vmmap = kmalloc(sizeof(*vmmap), GFP_KERNEL);
 mtx_lock(&vmmaplock);
 vmmap->vm_size = size;
 vmmap->vm_addr = addr;
 LIST_INSERT_HEAD(&vmmaphead[VM_HASH(addr)], vmmap, vm_next);
 mtx_unlock(&vmmaplock);
}

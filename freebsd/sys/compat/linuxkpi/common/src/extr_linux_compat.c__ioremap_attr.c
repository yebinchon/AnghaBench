
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 void* pmap_mapdev_attr (int ,unsigned long,int) ;
 int vmmap_add (void*,unsigned long) ;

void *
_ioremap_attr(vm_paddr_t phys_addr, unsigned long size, int attr)
{
 void *addr;

 addr = pmap_mapdev_attr(phys_addr, size, attr);
 if (addr == ((void*)0))
  return (((void*)0));
 vmmap_add(addr, size);

 return (addr);
}

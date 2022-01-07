
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;


 int MAPDEV_SETATTR ;
 int PAT_UNCACHEABLE ;
 void* pmap_mapdev_internal (int ,int ,int ,int ) ;

void *
pmap_mapdev_pciecfg(vm_paddr_t pa, vm_size_t size)
{

 return (pmap_mapdev_internal(pa, size, PAT_UNCACHEABLE,
     MAPDEV_SETATTR));
}

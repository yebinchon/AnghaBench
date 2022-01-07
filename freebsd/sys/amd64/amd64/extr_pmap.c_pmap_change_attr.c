
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int MAPDEV_FLUSHCACHE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PROT_NONE ;
 int kernel_pmap ;
 int pmap_change_props_locked (int ,int ,int ,int,int ) ;

int
pmap_change_attr(vm_offset_t va, vm_size_t size, int mode)
{
 int error;

 PMAP_LOCK(kernel_pmap);
 error = pmap_change_props_locked(va, size, PROT_NONE, mode,
     MAPDEV_FLUSHCACHE);
 PMAP_UNLOCK(kernel_pmap);
 return (error);
}

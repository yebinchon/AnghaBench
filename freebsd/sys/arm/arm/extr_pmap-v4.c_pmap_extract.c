
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_extract_locked (int ,int ) ;

vm_paddr_t
pmap_extract(pmap_t pmap, vm_offset_t va)
{
 vm_paddr_t pa;

 PMAP_LOCK(pmap);
 pa = pmap_extract_locked(pmap, va);
 PMAP_UNLOCK(pmap);
 return (pa);
}

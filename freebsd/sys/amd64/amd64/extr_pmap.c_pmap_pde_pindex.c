
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_offset_t ;


 int PDRSHIFT ;

__attribute__((used)) static __inline vm_pindex_t
pmap_pde_pindex(vm_offset_t va)
{
 return (va >> PDRSHIFT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 int ATTR_MASK ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 size_t pmap_l3_index (int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_l2_to_l3(pd_entry_t *l2, vm_offset_t va)
{
 pt_entry_t *l3;

 l3 = (pd_entry_t *)PHYS_TO_DMAP(pmap_load(l2) & ~ATTR_MASK);
 return (&l3[pmap_l3_index(va)]);
}

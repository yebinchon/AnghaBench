
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pd_entry_t ;


 int ATTR_MASK ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 size_t pmap_l2_index (int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_l1_to_l2(pd_entry_t *l1, vm_offset_t va)
{
 pd_entry_t *l2;

 l2 = (pd_entry_t *)PHYS_TO_DMAP(pmap_load(l1) & ~ATTR_MASK);
 return (&l2[pmap_l2_index(va)]);
}

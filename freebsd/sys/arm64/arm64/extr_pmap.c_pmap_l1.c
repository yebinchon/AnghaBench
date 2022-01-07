
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_DESCR_MASK ;
 int L0_TABLE ;
 int * pmap_l0 (int ,int ) ;
 int * pmap_l0_to_l1 (int *,int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_l1(pmap_t pmap, vm_offset_t va)
{
 pd_entry_t *l0;

 l0 = pmap_l0(pmap, va);
 if ((pmap_load(l0) & ATTR_DESCR_MASK) != L0_TABLE)
  return (((void*)0));

 return (pmap_l0_to_l1(l0, va));
}

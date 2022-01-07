
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_DESCR_MASK ;
 int L0_TABLE ;
 int L1_TABLE ;
 int L2_TABLE ;
 int* pmap_l0 (int ,int ) ;
 int* pmap_l0_to_l1 (int*,int ) ;
 int* pmap_l1_to_l2 (int*,int ) ;
 int pmap_load (int*) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_pde(pmap_t pmap, vm_offset_t va, int *level)
{
 pd_entry_t *l0, *l1, *l2, desc;

 l0 = pmap_l0(pmap, va);
 desc = pmap_load(l0) & ATTR_DESCR_MASK;
 if (desc != L0_TABLE) {
  *level = -1;
  return (((void*)0));
 }

 l1 = pmap_l0_to_l1(l0, va);
 desc = pmap_load(l1) & ATTR_DESCR_MASK;
 if (desc != L1_TABLE) {
  *level = 0;
  return (l0);
 }

 l2 = pmap_l1_to_l2(l1, va);
 desc = pmap_load(l2) & ATTR_DESCR_MASK;
 if (desc != L2_TABLE) {
  *level = 1;
  return (l1);
 }

 *level = 2;
 return (l2);
}

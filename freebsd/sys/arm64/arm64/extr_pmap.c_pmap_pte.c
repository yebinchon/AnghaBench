
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_DESCR_MASK ;
 int L1_BLOCK ;
 int L1_TABLE ;
 int L2_BLOCK ;
 int L2_TABLE ;
 int L3_PAGE ;
 int* pmap_l1 (int ,int ) ;
 int* pmap_l1_to_l2 (int*,int ) ;
 int* pmap_l2_to_l3 (int*,int ) ;
 int pmap_load (int*) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_pte(pmap_t pmap, vm_offset_t va, int *level)
{
 pd_entry_t *l1, *l2, desc;
 pt_entry_t *l3;

 l1 = pmap_l1(pmap, va);
 if (l1 == ((void*)0)) {
  *level = 0;
  return (((void*)0));
 }
 desc = pmap_load(l1) & ATTR_DESCR_MASK;
 if (desc == L1_BLOCK) {
  *level = 1;
  return (l1);
 }

 if (desc != L1_TABLE) {
  *level = 1;
  return (((void*)0));
 }

 l2 = pmap_l1_to_l2(l1, va);
 desc = pmap_load(l2) & ATTR_DESCR_MASK;
 if (desc == L2_BLOCK) {
  *level = 2;
  return (l2);
 }

 if (desc != L2_TABLE) {
  *level = 2;
  return (((void*)0));
 }

 *level = 3;
 l3 = pmap_l2_to_l3(l2, va);
 if ((pmap_load(l3) & ATTR_DESCR_MASK) != L3_PAGE)
  return (((void*)0));

 return (l3);
}

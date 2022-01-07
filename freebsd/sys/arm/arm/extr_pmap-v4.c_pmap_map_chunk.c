
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ pt_entry_t ;
typedef scalar_t__ pd_entry_t ;


 scalar_t__ L1_C_ADDR_MASK ;
 size_t L1_IDX (scalar_t__) ;
 scalar_t__ L1_S_DOM (int ) ;
 scalar_t__ L1_S_MAPPABLE_P (scalar_t__,scalar_t__,int) ;
 scalar_t__ L1_S_PROT (int ,int) ;
 scalar_t__ L1_S_PROTO ;
 scalar_t__ L1_S_SHIFT ;
 int L1_S_SIZE ;
 scalar_t__ L1_TYPE_C ;
 scalar_t__ L1_TYPE_MASK ;
 scalar_t__ L2_L_MAPPABLE_P (scalar_t__,scalar_t__,int) ;
 scalar_t__ L2_L_PROT (int ,int) ;
 scalar_t__ L2_L_PROTO ;
 int L2_L_SIZE ;
 scalar_t__ L2_S_PROT (int ,int) ;
 scalar_t__ L2_S_PROTO ;
 int PAGE_SIZE ;
 int PMAP_DOMAIN_KERNEL ;

 int PTE_KERNEL ;


 int PTE_SYNC (scalar_t__*) ;
 scalar_t__ kernel_pt_lookup (scalar_t__) ;
 size_t l2pte_index (scalar_t__) ;
 int panic (char*,...) ;
 int printf (char*,...) ;
 scalar_t__ pte_l1_s_cache_mode ;
 scalar_t__ pte_l1_s_cache_mode_pt ;
 scalar_t__ pte_l2_l_cache_mode ;
 scalar_t__ pte_l2_l_cache_mode_pt ;
 scalar_t__ pte_l2_s_cache_mode ;
 scalar_t__ pte_l2_s_cache_mode_pt ;
 int roundup2 (int,int) ;

vm_size_t
pmap_map_chunk(vm_offset_t l1pt, vm_offset_t va, vm_offset_t pa,
    vm_size_t size, int prot, int cache)
{
 pd_entry_t *pde = (pd_entry_t *) l1pt;
 pt_entry_t *pte, f1, f2s, f2l;
 vm_size_t resid;
 int i;

 resid = roundup2(size, PAGE_SIZE);

 if (l1pt == 0)
  panic("pmap_map_chunk: no L1 table provided");






 switch (cache) {
 case 129:
 default:
  f1 = 0;
  f2l = 0;
  f2s = 0;
  break;

 case 130:
  f1 = pte_l1_s_cache_mode;
  f2l = pte_l2_l_cache_mode;
  f2s = pte_l2_s_cache_mode;
  break;

 case 128:
  f1 = pte_l1_s_cache_mode_pt;
  f2l = pte_l2_l_cache_mode_pt;
  f2s = pte_l2_s_cache_mode_pt;
  break;
 }

 size = resid;

 while (resid > 0) {

  if (L1_S_MAPPABLE_P(va, pa, resid)) {



   pde[va >> L1_S_SHIFT] = L1_S_PROTO | pa |
       L1_S_PROT(PTE_KERNEL, prot) | f1 |
       L1_S_DOM(PMAP_DOMAIN_KERNEL);
   PTE_SYNC(&pde[va >> L1_S_SHIFT]);
   va += L1_S_SIZE;
   pa += L1_S_SIZE;
   resid -= L1_S_SIZE;
   continue;
  }






  if ((pde[va >> L1_S_SHIFT] & L1_TYPE_MASK) != L1_TYPE_C)
   panic("pmap_map_chunk: no L2 table for VA 0x%08x", va);

  pte = (pt_entry_t *) kernel_pt_lookup(
      pde[L1_IDX(va)] & L1_C_ADDR_MASK);
  if (pte == ((void*)0))
   panic("pmap_map_chunk: can't find L2 table for VA"
       "0x%08x", va);

  if (L2_L_MAPPABLE_P(va, pa, resid)) {



   for (i = 0; i < 16; i++) {
    pte[l2pte_index(va) + i] =
        L2_L_PROTO | pa |
        L2_L_PROT(PTE_KERNEL, prot) | f2l;
    PTE_SYNC(&pte[l2pte_index(va) + i]);
   }
   va += L2_L_SIZE;
   pa += L2_L_SIZE;
   resid -= L2_L_SIZE;
   continue;
  }





  pte[l2pte_index(va)] =
      L2_S_PROTO | pa | L2_S_PROT(PTE_KERNEL, prot) | f2s;
  PTE_SYNC(&pte[l2pte_index(va)]);
  va += PAGE_SIZE;
  pa += PAGE_SIZE;
  resid -= PAGE_SIZE;
 }



 return (size);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_offset_t ;
typedef size_t pt_entry_t ;
typedef int pd_entry_t ;


 int KASSERT (int,char*) ;
 int L1_C_ADDR_MASK ;
 size_t L1_IDX (size_t) ;
 size_t L1_S_SHIFT ;
 int L1_TYPE_C ;
 int L1_TYPE_MASK ;
 size_t L2_S_PROT (int ,int) ;
 size_t L2_S_PROTO ;
 size_t PAGE_MASK ;

 int PTE_KERNEL ;


 int PTE_SYNC (size_t*) ;
 scalar_t__ kernel_pt_lookup (int) ;
 size_t l2pte_index (size_t) ;
 int panic (char*,size_t) ;
 size_t pte_l2_s_cache_mode ;
 size_t pte_l2_s_cache_mode_pt ;

void
pmap_map_entry(vm_offset_t l1pt, vm_offset_t va, vm_offset_t pa, int prot,
    int cache)
{
 pd_entry_t *pde = (pd_entry_t *) l1pt;
 pt_entry_t fl;
 pt_entry_t *pte;

 KASSERT(((va | pa) & PAGE_MASK) == 0, ("ouin"));

 switch (cache) {
 case 129:
 default:
  fl = 0;
  break;

 case 130:
  fl = pte_l2_s_cache_mode;
  break;

 case 128:
  fl = pte_l2_s_cache_mode_pt;
  break;
 }

 if ((pde[va >> L1_S_SHIFT] & L1_TYPE_MASK) != L1_TYPE_C)
  panic("pmap_map_entry: no L2 table for VA 0x%08x", va);

 pte = (pt_entry_t *) kernel_pt_lookup(pde[L1_IDX(va)] & L1_C_ADDR_MASK);

 if (pte == ((void*)0))
  panic("pmap_map_entry: can't find L2 table for VA 0x%08x", va);

 pte[l2pte_index(va)] =
     L2_S_PROTO | pa | L2_S_PROT(PTE_KERNEL, prot) | fl;
 PTE_SYNC(&pte[l2pte_index(va)]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_offset_t ;
typedef size_t pd_entry_t ;


 int KASSERT (int,char*) ;
 size_t L1_S_DOM (int ) ;
 size_t L1_S_OFFSET ;
 size_t L1_S_PROT (int ,int) ;
 size_t L1_S_PROTO ;
 size_t L1_S_SHIFT ;
 int PMAP_DOMAIN_KERNEL ;

 int PTE_KERNEL ;


 int PTE_SYNC (size_t*) ;
 size_t pte_l1_s_cache_mode ;
 size_t pte_l1_s_cache_mode_pt ;

void
pmap_map_section(vm_offset_t l1pt, vm_offset_t va, vm_offset_t pa,
    int prot, int cache)
{
 pd_entry_t *pde = (pd_entry_t *) l1pt;
 pd_entry_t fl;

 KASSERT(((va | pa) & L1_S_OFFSET) == 0, ("ouin2"));

 switch (cache) {
 case 129:
 default:
  fl = 0;
  break;

 case 130:
  fl = pte_l1_s_cache_mode;
  break;

 case 128:
  fl = pte_l1_s_cache_mode_pt;
  break;
 }

 pde[va >> L1_S_SHIFT] = L1_S_PROTO | pa |
     L1_S_PROT(PTE_KERNEL, prot) | fl | L1_S_DOM(PMAP_DOMAIN_KERNEL);
 PTE_SYNC(&pde[va >> L1_S_SHIFT]);

}

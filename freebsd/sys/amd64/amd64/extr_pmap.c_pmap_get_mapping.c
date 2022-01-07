
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int pt_entry_t ;
typedef int pml4_entry_t ;
typedef int pmap_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int PG_PS ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int* pmap_pde_to_pte (int*,int ) ;
 int* pmap_pdpe_to_pde (int*,int ) ;
 int* pmap_pml4e (int ,int ) ;
 int* pmap_pml4e_to_pdpe (int*,int ) ;
 int pmap_valid_bit (int ) ;

void
pmap_get_mapping(pmap_t pmap, vm_offset_t va, uint64_t *ptr, int *num)
{
 pml4_entry_t *pml4;
 pdp_entry_t *pdp;
 pd_entry_t *pde;
 pt_entry_t *pte, PG_V;
 int idx;

 idx = 0;
 PG_V = pmap_valid_bit(pmap);
 PMAP_LOCK(pmap);

 pml4 = pmap_pml4e(pmap, va);
 ptr[idx++] = *pml4;
 if ((*pml4 & PG_V) == 0)
  goto done;

 pdp = pmap_pml4e_to_pdpe(pml4, va);
 ptr[idx++] = *pdp;
 if ((*pdp & PG_V) == 0 || (*pdp & PG_PS) != 0)
  goto done;

 pde = pmap_pdpe_to_pde(pdp, va);
 ptr[idx++] = *pde;
 if ((*pde & PG_V) == 0 || (*pde & PG_PS) != 0)
  goto done;

 pte = pmap_pde_to_pte(pde, va);
 ptr[idx++] = *pte;

done:
 PMAP_UNLOCK(pmap);
 *num = idx;
}

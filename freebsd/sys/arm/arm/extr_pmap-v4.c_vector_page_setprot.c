
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_bucket {int* l2b_kva; } ;
typedef int pt_entry_t ;


 int L1_S_PROT_MASK ;
 int L2_S_PROT (int ,int) ;
 int PTE_KERNEL ;
 int PTE_SYNC (int*) ;
 int cpu_cpwait () ;
 int cpu_tlb_flushD_SE (int ) ;
 int kernel_pmap ;
 size_t l2pte_index (int ) ;
 struct l2_bucket* pmap_get_l2_bucket (int ,int ) ;
 int vector_page ;

void
vector_page_setprot(int prot)
{
 struct l2_bucket *l2b;
 pt_entry_t *ptep;

 l2b = pmap_get_l2_bucket(kernel_pmap, vector_page);

 ptep = &l2b->l2b_kva[l2pte_index(vector_page)];

 *ptep = (*ptep & ~L1_S_PROT_MASK) | L2_S_PROT(PTE_KERNEL, prot);
 PTE_SYNC(ptep);
 cpu_tlb_flushD_SE(vector_page);
 cpu_cpwait();
}

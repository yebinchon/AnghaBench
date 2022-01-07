
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct vm_page {int dummy; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef int pt_entry_t ;


 int L2_S_PROT (int ,int) ;
 int L2_S_PROTO ;
 int PTE_KERNEL ;
 int PTE_SYNC (int*) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_PAGE_TO_PHYS (struct vm_page*) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int kernel_pmap ;
 size_t l2pte_index (int ) ;
 struct l2_bucket* pmap_get_l2_bucket (int ,int ) ;
 struct vm_page* vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static __inline int
pmap_grow_map(vm_offset_t va, pt_entry_t cache_mode, vm_paddr_t *pap)
{
 struct l2_bucket *l2b;
 pt_entry_t *ptep;
 vm_paddr_t pa;
 struct vm_page *pg;

 pg = vm_page_alloc(((void*)0), 0, VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);
 if (pg == ((void*)0))
  return (1);
 pa = VM_PAGE_TO_PHYS(pg);

 if (pap)
  *pap = pa;

 l2b = pmap_get_l2_bucket(kernel_pmap, va);

 ptep = &l2b->l2b_kva[l2pte_index(va)];
 *ptep = L2_S_PROTO | pa | cache_mode |
     L2_S_PROT(PTE_KERNEL, VM_PROT_READ | VM_PROT_WRITE);
 PTE_SYNC(ptep);
 return (0);
}

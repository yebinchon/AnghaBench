
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pt_entry_t ;
struct TYPE_5__ {int pat_mode; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int PAGE_SIZE ;
 int PG_FRAME ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int X86_PG_PTE_CACHE ;
 int X86_PG_RW ;
 int X86_PG_V ;
 scalar_t__ __predict_false (int) ;
 int kernel_pmap ;
 int pg_g ;
 int pg_nx ;
 int pmap_cache_bits (int ,int ,int ) ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;
 int pte_store (int*,int) ;
 int* vtopte (scalar_t__) ;

void
pmap_qenter(vm_offset_t sva, vm_page_t *ma, int count)
{
 pt_entry_t *endpte, oldpte, pa, *pte;
 vm_page_t m;
 int cache_bits;

 oldpte = 0;
 pte = vtopte(sva);
 endpte = pte + count;
 while (pte < endpte) {
  m = *ma++;
  cache_bits = pmap_cache_bits(kernel_pmap, m->md.pat_mode, 0);
  pa = VM_PAGE_TO_PHYS(m) | cache_bits;
  if ((*pte & (PG_FRAME | X86_PG_PTE_CACHE)) != pa) {
   oldpte |= *pte;
   pte_store(pte, pa | pg_g | pg_nx | X86_PG_RW | X86_PG_V);
  }
  pte++;
 }
 if (__predict_false((oldpte & X86_PG_V) != 0))
  pmap_invalidate_range(kernel_pmap, sva, sva + count *
      PAGE_SIZE);
}

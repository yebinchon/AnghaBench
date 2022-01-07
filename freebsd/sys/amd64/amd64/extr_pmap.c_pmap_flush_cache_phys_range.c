
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_memattr_t ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 int MIN (int,int) ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int dmaplimit ;
 int invlpg (scalar_t__) ;
 int kernel_arena ;
 int kernel_pmap ;
 int pmap_cache_bits (int ,int ,int ) ;
 int pmap_flush_cache_range (scalar_t__,scalar_t__) ;
 int pte_store (int *,int) ;
 int sched_pin () ;
 int sched_unpin () ;
 int vmem_alloc (int ,scalar_t__,int,scalar_t__*) ;
 int vmem_free (int ,scalar_t__,scalar_t__) ;
 int * vtopte (scalar_t__) ;

void
pmap_flush_cache_phys_range(vm_paddr_t spa, vm_paddr_t epa, vm_memattr_t mattr)
{
 pt_entry_t *pte;
 vm_offset_t vaddr;
 int error, pte_bits;

 KASSERT((spa & PAGE_MASK) == 0,
     ("pmap_flush_cache_phys_range: spa not page-aligned"));
 KASSERT((epa & PAGE_MASK) == 0,
     ("pmap_flush_cache_phys_range: epa not page-aligned"));

 if (spa < dmaplimit) {
  pmap_flush_cache_range(PHYS_TO_DMAP(spa), PHYS_TO_DMAP(MIN(
      dmaplimit, epa)));
  if (dmaplimit >= epa)
   return;
  spa = dmaplimit;
 }

 pte_bits = pmap_cache_bits(kernel_pmap, mattr, 0) | X86_PG_RW |
     X86_PG_V;
 error = vmem_alloc(kernel_arena, PAGE_SIZE, M_BESTFIT | M_WAITOK,
     &vaddr);
 KASSERT(error == 0, ("vmem_alloc failed: %d", error));
 pte = vtopte(vaddr);
 for (; spa < epa; spa += PAGE_SIZE) {
  sched_pin();
  pte_store(pte, spa | pte_bits);
  invlpg(vaddr);

  pmap_flush_cache_range(vaddr, vaddr + PAGE_SIZE);
  sched_unpin();
 }
 vmem_free(kernel_arena, vaddr, PAGE_SIZE);
}

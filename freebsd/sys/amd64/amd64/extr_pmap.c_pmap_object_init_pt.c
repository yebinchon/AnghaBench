
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef TYPE_3__* vm_object_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_13__ {int pat_mode; } ;
struct TYPE_14__ {scalar_t__ valid; scalar_t__ ref_count; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int NBPDR ;
 scalar_t__ OBJT_DEVICE ;
 scalar_t__ OBJT_SG ;
 int PAGE_SIZE ;
 int PG_PS ;
 int PG_U ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_3__*) ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int atomic_add_long (int *,int) ;
 scalar_t__ atop (int) ;
 int listq ;
 int pde_store (int*,int) ;
 int pmap_accessed_bit (int ) ;
 TYPE_2__* pmap_allocpde (int ,int,int *) ;
 int pmap_cache_bits (int ,int,int) ;
 int pmap_modified_bit (int ) ;
 size_t pmap_pde_index (int) ;
 int pmap_pde_mappings ;
 int pmap_ps_enabled (int ) ;
 int pmap_resident_count_inc (int ,int) ;
 int pmap_rw_bit (int ) ;
 int pmap_valid_bit (int ) ;
 int vm_object_populate (TYPE_3__*,scalar_t__,scalar_t__) ;
 TYPE_2__* vm_page_lookup (TYPE_3__*,scalar_t__) ;

void
pmap_object_init_pt(pmap_t pmap, vm_offset_t addr, vm_object_t object,
    vm_pindex_t pindex, vm_size_t size)
{
 pd_entry_t *pde;
 pt_entry_t PG_A, PG_M, PG_RW, PG_V;
 vm_paddr_t pa, ptepa;
 vm_page_t p, pdpg;
 int pat_mode;

 PG_A = pmap_accessed_bit(pmap);
 PG_M = pmap_modified_bit(pmap);
 PG_V = pmap_valid_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT(object->type == OBJT_DEVICE || object->type == OBJT_SG,
     ("pmap_object_init_pt: non-device object"));
 if ((addr & (NBPDR - 1)) == 0 && (size & (NBPDR - 1)) == 0) {
  if (!pmap_ps_enabled(pmap))
   return;
  if (!vm_object_populate(object, pindex, pindex + atop(size)))
   return;
  p = vm_page_lookup(object, pindex);
  KASSERT(p->valid == VM_PAGE_BITS_ALL,
      ("pmap_object_init_pt: invalid page %p", p));
  pat_mode = p->md.pat_mode;





  ptepa = VM_PAGE_TO_PHYS(p);
  if (ptepa & (NBPDR - 1))
   return;






  p = TAILQ_NEXT(p, listq);
  for (pa = ptepa + PAGE_SIZE; pa < ptepa + size;
      pa += PAGE_SIZE) {
   KASSERT(p->valid == VM_PAGE_BITS_ALL,
       ("pmap_object_init_pt: invalid page %p", p));
   if (pa != VM_PAGE_TO_PHYS(p) ||
       pat_mode != p->md.pat_mode)
    return;
   p = TAILQ_NEXT(p, listq);
  }






  PMAP_LOCK(pmap);
  for (pa = ptepa | pmap_cache_bits(pmap, pat_mode, 1);
      pa < ptepa + size; pa += NBPDR) {
   pdpg = pmap_allocpde(pmap, addr, ((void*)0));
   if (pdpg == ((void*)0)) {







    addr += NBPDR;
    continue;
   }
   pde = (pd_entry_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pdpg));
   pde = &pde[pmap_pde_index(addr)];
   if ((*pde & PG_V) == 0) {
    pde_store(pde, pa | PG_PS | PG_M | PG_A |
        PG_U | PG_RW | PG_V);
    pmap_resident_count_inc(pmap, NBPDR / PAGE_SIZE);
    atomic_add_long(&pmap_pde_mappings, 1);
   } else {

    pdpg->ref_count--;
    KASSERT(pdpg->ref_count > 0,
        ("pmap_object_init_pt: missing reference "
        "to page directory page, va: 0x%lx", addr));
   }
   addr += NBPDR;
  }
  PMAP_UNLOCK(pmap);
 }
}

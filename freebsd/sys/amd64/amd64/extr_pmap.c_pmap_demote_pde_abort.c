
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int CTR2 (int ,char*,int ,int ) ;
 int KTR_PMAP ;
 int SLIST_INIT (struct spglist*) ;
 int pmap_global_bit (int ) ;
 int pmap_invalidate_pde_page (int ,int ,int) ;
 int pmap_remove_pde (int ,int*,int ,struct spglist*,struct rwlock**) ;
 int trunc_2mpage (int ) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static void
pmap_demote_pde_abort(pmap_t pmap, vm_offset_t va, pd_entry_t *pde,
    pd_entry_t oldpde, struct rwlock **lockp)
{
 struct spglist free;
 vm_offset_t sva;

 SLIST_INIT(&free);
 sva = trunc_2mpage(va);
 pmap_remove_pde(pmap, pde, sva, &free, lockp);
 if ((oldpde & pmap_global_bit(pmap)) == 0)
  pmap_invalidate_pde_page(pmap, sva, oldpde);
 vm_page_free_pages_toq(&free, 1);
 CTR2(KTR_PMAP, "pmap_demote_pde: failure for va %#lx in pmap %p",
     va, pmap);
}

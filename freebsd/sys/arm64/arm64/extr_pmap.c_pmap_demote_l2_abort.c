
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int SLIST_INIT (struct spglist*) ;
 int pmap_l1 (int ,int ) ;
 int pmap_load (int ) ;
 int pmap_remove_l2 (int ,int *,int ,int ,struct spglist*,struct rwlock**) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static void
pmap_demote_l2_abort(pmap_t pmap, vm_offset_t va, pt_entry_t *l2,
    struct rwlock **lockp)
{
 struct spglist free;

 SLIST_INIT(&free);
 (void)pmap_remove_l2(pmap, l2, va, pmap_load(pmap_l1(pmap, va)), &free,
     lockp);
 vm_page_free_pages_toq(&free, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pmap_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int pmap_add_delayed_free_list (int ,struct spglist*) ;
 int pmap_unwire_pt2pg (int ,int ,int ) ;
 int pt2_wirecount_dec (int ,int ) ;
 scalar_t__ pt2pg_is_empty (int ) ;
 int pte1_index (int ) ;

__attribute__((used)) static __inline boolean_t
pmap_unwire_pt2(pmap_t pmap, vm_offset_t va, vm_page_t m, struct spglist *free)
{
 pt2_wirecount_dec(m, pte1_index(va));
 if (pt2pg_is_empty(m)) {






  pmap_unwire_pt2pg(pmap, va, m);
  pmap_add_delayed_free_list(m, free);
  return (TRUE);
 } else
  return (FALSE);
}

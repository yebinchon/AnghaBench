
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int dummy; } ;
struct pt_iscache_lru_entry {struct pt_iscache_lru_entry* next; struct pt_section const* section; } ;
struct pt_image_section_cache {struct pt_iscache_lru_entry* lru; } ;


 int pt_iscache_lru_free (struct pt_iscache_lru_entry*) ;
 int pte_internal ;

__attribute__((used)) static int pt_iscache_lru_remove(struct pt_image_section_cache *iscache,
     const struct pt_section *section)
{
 struct pt_iscache_lru_entry *lru, **pnext;

 if (!iscache)
  return -pte_internal;

 pnext = &iscache->lru;
 for (lru = *pnext; lru; pnext = &lru->next, lru = *pnext) {

  if (lru->section != section)
   continue;


  *pnext = lru->next;
  lru->next = ((void*)0);
  break;
 }

 return pt_iscache_lru_free(lru);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_iscache_lru_entry {scalar_t__ size; struct pt_iscache_lru_entry* next; } ;
struct pt_image_section_cache {unsigned long long limit; scalar_t__ used; struct pt_iscache_lru_entry* lru; } ;


 int pte_internal ;

__attribute__((used)) static int pt_iscache_lru_prune(struct pt_image_section_cache *iscache,
    struct pt_iscache_lru_entry **tail)
{
 struct pt_iscache_lru_entry *lru, **pnext;
 uint64_t limit, used;

 if (!iscache || !tail)
  return -pte_internal;

 limit = iscache->limit;
 used = 0ull;

 pnext = &iscache->lru;
 for (lru = *pnext; lru; pnext = &lru->next, lru = *pnext) {

  used += lru->size;
  if (used <= limit)
   continue;


  iscache->used = used - lru->size;
  *pnext = ((void*)0);
  *tail = lru;

  return 0;
 }


 return -pte_internal;
}

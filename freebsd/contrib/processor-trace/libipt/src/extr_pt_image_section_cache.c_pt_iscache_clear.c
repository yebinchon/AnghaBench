
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_lru_entry {int dummy; } ;
struct pt_iscache_entry {struct pt_section* section; } ;
struct pt_image_section_cache {size_t size; unsigned long long used; struct pt_iscache_lru_entry* lru; scalar_t__ capacity; struct pt_iscache_entry* entries; } ;


 int free (struct pt_iscache_entry*) ;
 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_lru_free (struct pt_iscache_lru_entry*) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;
 int pt_section_detach (struct pt_section*,struct pt_image_section_cache*) ;
 int pt_section_put (struct pt_section*) ;
 int pte_internal ;

int pt_iscache_clear(struct pt_image_section_cache *iscache)
{
 struct pt_iscache_lru_entry *lru;
 struct pt_iscache_entry *entries;
 uint16_t idx, end;
 int errcode;

 if (!iscache)
  return -pte_internal;

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  return errcode;

 entries = iscache->entries;
 end = iscache->size;
 lru = iscache->lru;

 iscache->entries = ((void*)0);
 iscache->capacity = 0;
 iscache->size = 0;
 iscache->lru = ((void*)0);
 iscache->used = 0ull;

 errcode = pt_iscache_unlock(iscache);
 if (errcode < 0)
  return errcode;

 errcode = pt_iscache_lru_free(lru);
 if (errcode < 0)
  return errcode;

 for (idx = 0; idx < end; ++idx) {
  struct pt_section *section;

  section = entries[idx].section;




  errcode = pt_section_detach(section, iscache);
  if (errcode < 0)
   return errcode;

  errcode = pt_section_put(section);
  if (errcode < 0)
   return errcode;
 }

 free(entries);
 return 0;
}

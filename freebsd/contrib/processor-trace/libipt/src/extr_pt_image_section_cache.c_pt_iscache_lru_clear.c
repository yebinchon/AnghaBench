
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_iscache_lru_entry {int dummy; } ;
struct pt_image_section_cache {unsigned long long used; struct pt_iscache_lru_entry* lru; } ;


 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_lru_free (struct pt_iscache_lru_entry*) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;

__attribute__((used)) static int pt_iscache_lru_clear(struct pt_image_section_cache *iscache)
{
 struct pt_iscache_lru_entry *lru;
 int errcode;

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  return errcode;

 lru = iscache->lru;
 iscache->lru = ((void*)0);
 iscache->used = 0ull;

 errcode = pt_iscache_unlock(iscache);
 if (errcode < 0)
  return errcode;

 return pt_iscache_lru_free(lru);
}

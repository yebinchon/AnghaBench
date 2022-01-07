
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_iscache_lru_entry {int dummy; } ;
struct pt_image_section_cache {scalar_t__ used; scalar_t__ limit; } ;


 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_lru_free (struct pt_iscache_lru_entry*) ;
 int pt_iscache_lru_prune (struct pt_image_section_cache*,struct pt_iscache_lru_entry**) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;
 int pte_invalid ;

int pt_iscache_set_limit(struct pt_image_section_cache *iscache, uint64_t limit)
{
 struct pt_iscache_lru_entry *tail;
 int errcode, status;

 if (!iscache)
  return -pte_invalid;

 status = 0;
 tail = ((void*)0);

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  return errcode;

 iscache->limit = limit;
 if (limit < iscache->used)
  status = pt_iscache_lru_prune(iscache, &tail);

 errcode = pt_iscache_unlock(iscache);

 if (errcode < 0 || status < 0)
  return (status < 0) ? status : errcode;

 return pt_iscache_lru_free(tail);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int dummy; } ;
struct pt_iscache_lru_entry {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_lru_add (struct pt_image_section_cache*,struct pt_section*) ;
 int pt_iscache_lru_free (struct pt_iscache_lru_entry*) ;
 int pt_iscache_lru_prune (struct pt_image_section_cache*,struct pt_iscache_lru_entry**) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;

int pt_iscache_notify_map(struct pt_image_section_cache *iscache,
     struct pt_section *section)
{
 struct pt_iscache_lru_entry *tail;
 int errcode, status;

 tail = ((void*)0);

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  return errcode;

 status = pt_iscache_lru_add(iscache, section);
 if (status > 0)
  status = pt_iscache_lru_prune(iscache, &tail);

 errcode = pt_iscache_unlock(iscache);

 if (errcode < 0 || status < 0)
  return (status < 0) ? status : errcode;

 return pt_iscache_lru_free(tail);
}

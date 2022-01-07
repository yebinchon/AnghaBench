
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {int laddr; struct pt_section* section; } ;
struct pt_image_section_cache {size_t size; struct pt_iscache_entry* entries; } ;


 int UINT16_MAX ;
 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;
 int pt_section_get (struct pt_section*) ;
 int pte_bad_image ;
 int pte_internal ;

int pt_iscache_lookup(struct pt_image_section_cache *iscache,
        struct pt_section **section, uint64_t *laddr, int isid)
{
 uint16_t index;
 int errcode, status;

 if (!iscache || !section || !laddr)
  return -pte_internal;

 if (isid <= 0)
  return -pte_bad_image;

 isid -= 1;
 if (isid > UINT16_MAX)
  return -pte_internal;

 index = (uint16_t) isid;

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  return errcode;

 if (iscache->size <= index)
  status = -pte_bad_image;
 else {
  const struct pt_iscache_entry *entry;

  entry = &iscache->entries[index];
  *section = entry->section;
  *laddr = entry->laddr;

  status = pt_section_get(*section);
 }

 errcode = pt_iscache_unlock(iscache);
 if (errcode < 0)
  return errcode;

 return status;
}

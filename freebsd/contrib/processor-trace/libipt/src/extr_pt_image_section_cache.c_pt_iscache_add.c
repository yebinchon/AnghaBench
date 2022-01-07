
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {int laddr; struct pt_section* section; } ;
struct pt_image_section_cache {int size; scalar_t__ capacity; struct pt_iscache_entry* entries; } ;


 int isid_from_index (size_t) ;
 int pt_iscache_expand (struct pt_image_section_cache*) ;
 int pt_iscache_find_section_locked (struct pt_image_section_cache*,char const*,int ,int ,int ) ;
 int pt_iscache_lock (struct pt_image_section_cache*) ;
 int pt_iscache_lru_clear (struct pt_image_section_cache*) ;
 int pt_iscache_lru_remove (struct pt_image_section_cache*,struct pt_section*) ;
 int pt_iscache_unlock (struct pt_image_section_cache*) ;
 int pt_section_attach (struct pt_section*,struct pt_image_section_cache*) ;
 int pt_section_detach (struct pt_section*,struct pt_image_section_cache*) ;
 char* pt_section_filename (struct pt_section*) ;
 int pt_section_get (struct pt_section*) ;
 int pt_section_offset (struct pt_section*) ;
 int pt_section_put (struct pt_section*) ;
 int pt_section_size (struct pt_section*) ;
 int pte_internal ;

int pt_iscache_add(struct pt_image_section_cache *iscache,
     struct pt_section *section, uint64_t laddr)
{
 const char *filename;
 uint64_t offset, size;
 uint16_t idx;
 int errcode;

 if (!iscache || !section)
  return -pte_internal;


 filename = pt_section_filename(section);
 if (!filename)
  return -pte_internal;

 offset = pt_section_offset(section);
 size = pt_section_size(section);
 errcode = pt_section_get(section);
 if (errcode < 0)
  return errcode;

 errcode = pt_section_attach(section, iscache);
 if (errcode < 0)
  goto out_put;

 errcode = pt_iscache_lock(iscache);
 if (errcode < 0)
  goto out_detach;
 for (;;) {
  const struct pt_iscache_entry *entry;
  struct pt_section *sec;
  int match;




  match = pt_iscache_find_section_locked(iscache, filename,
             offset, size, laddr);
  if (match < 0) {
   errcode = match;
   goto out_unlock_detach;
  }


  if (iscache->size <= match)
   break;

  entry = &iscache->entries[match];






  sec = entry->section;
  if (sec == section) {
   if (entry->laddr == laddr) {
    errcode = pt_iscache_unlock(iscache);
    if (errcode < 0)
     goto out_detach;

    errcode = pt_section_detach(section, iscache);
    if (errcode < 0)
     goto out_lru;

    errcode = pt_section_put(section);
    if (errcode < 0)
     return errcode;

    return isid_from_index((uint16_t) match);
   }

   break;
  }
  errcode = pt_section_get(sec);
  if (errcode < 0)
   goto out_unlock_detach;

  errcode = pt_iscache_unlock(iscache);
  if (errcode < 0) {
   (void) pt_section_put(sec);
   goto out_detach;
  }

  errcode = pt_section_detach(section, iscache);
  if (errcode < 0) {
   (void) pt_section_put(sec);
   goto out_lru;
  }

  errcode = pt_section_attach(sec, iscache);
  if (errcode < 0) {
   (void) pt_section_put(sec);
   goto out_lru;
  }

  errcode = pt_iscache_lock(iscache);
  if (errcode < 0) {
   (void) pt_section_put(section);

   section = sec;
   goto out_detach;
  }







  errcode = pt_iscache_lru_remove(iscache, section);
  if (errcode < 0) {
   (void) pt_section_put(section);

   section = sec;
   goto out_unlock_detach;
  }


  errcode = pt_section_put(section);
  if (errcode < 0) {

   section = sec;
   goto out_unlock_detach;
  }





  section = sec;
 }


 if (iscache->capacity <= iscache->size) {

  if (iscache->capacity < iscache->size) {
   errcode = -pte_internal;
   goto out_unlock_detach;
  }

  errcode = pt_iscache_expand(iscache);
  if (errcode < 0)
   goto out_unlock_detach;


  if (iscache->capacity <= iscache->size) {
   errcode = -pte_internal;
   goto out_unlock_detach;
  }
 }






 idx = iscache->size++;

 iscache->entries[idx].section = section;
 iscache->entries[idx].laddr = laddr;

 errcode = pt_iscache_unlock(iscache);
 if (errcode < 0)
  return errcode;

 return isid_from_index(idx);

 out_unlock_detach:
 (void) pt_iscache_unlock(iscache);

 out_detach:
 (void) pt_section_detach(section, iscache);

 out_lru:
 (void) pt_iscache_lru_clear(iscache);

 out_put:
 (void) pt_section_put(section);

 return errcode;
}

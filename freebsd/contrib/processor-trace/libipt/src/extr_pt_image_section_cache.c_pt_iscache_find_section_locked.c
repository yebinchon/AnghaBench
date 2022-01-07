
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {scalar_t__ laddr; struct pt_section* section; } ;
struct pt_image_section_cache {size_t size; struct pt_iscache_entry* entries; } ;


 char* pt_section_filename (struct pt_section const*) ;
 scalar_t__ pt_section_offset (struct pt_section const*) ;
 scalar_t__ pt_section_size (struct pt_section const*) ;
 int pte_internal ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
pt_iscache_find_section_locked(const struct pt_image_section_cache *iscache,
          const char *filename, uint64_t offset,
          uint64_t size, uint64_t laddr)
{
 const struct pt_section *section;
 uint16_t idx, end;
 int match;

 if (!iscache || !filename)
  return -pte_internal;

 section = ((void*)0);
 match = end = iscache->size;
 for (idx = 0; idx < end; ++idx) {
  const struct pt_iscache_entry *entry;
  const struct pt_section *sec;

  entry = &iscache->entries[idx];




  sec = entry->section;


  if (sec != section) {
   const char *sec_filename;


   if (section)
    continue;

   if (offset != pt_section_offset(sec))
    continue;

   if (size != pt_section_size(sec))
    continue;

   sec_filename = pt_section_filename(sec);
   if (!sec_filename)
    return -pte_internal;

   if (strcmp(filename, sec_filename) != 0)
    continue;


   section = sec;
   match = idx;
  }





  if (laddr == entry->laddr)
   return idx;
 }

 return match;
}

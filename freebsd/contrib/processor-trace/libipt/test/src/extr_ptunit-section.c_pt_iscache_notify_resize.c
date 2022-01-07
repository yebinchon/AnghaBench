
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_section {int dummy; } ;
struct pt_image_section_cache {scalar_t__ map; } ;


 int pt_section_map_share (struct pt_section*) ;
 int pt_section_memsize (struct pt_section*,scalar_t__*) ;
 int pte_internal ;

int pt_iscache_notify_resize(struct pt_image_section_cache *iscache,
        struct pt_section *section, uint64_t size)
{
 uint64_t memsize;
 int errcode;

 if (!iscache)
  return -pte_internal;

 if (iscache->map <= 0)
  return iscache->map;


 iscache->map = 0;

 errcode = pt_section_memsize(section, &memsize);
 if (errcode < 0)
  return errcode;

 if (size != memsize)
  return -pte_internal;

 return pt_section_map_share(section);
}

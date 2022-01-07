
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int dummy; } ;
struct pt_image_section_cache {scalar_t__ map; } ;


 int pt_section_map_share (struct pt_section*) ;
 int pte_internal ;

int pt_iscache_notify_map(struct pt_image_section_cache *iscache,
     struct pt_section *section)
{
 if (!iscache)
  return -pte_internal;

 if (iscache->map <= 0)
  return iscache->map;


 iscache->map = 0;

 return pt_section_map_share(section);
}

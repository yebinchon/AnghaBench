
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image_section_cache {char const* name; } ;



const char *pt_iscache_name(const struct pt_image_section_cache *iscache)
{
 if (!iscache)
  return ((void*)0);

 return iscache->name;
}

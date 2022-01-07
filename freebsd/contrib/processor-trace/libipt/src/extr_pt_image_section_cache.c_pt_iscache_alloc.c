
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image_section_cache {int dummy; } ;


 struct pt_image_section_cache* malloc (int) ;
 int pt_iscache_init (struct pt_image_section_cache*,char const*) ;

struct pt_image_section_cache *pt_iscache_alloc(const char *name)
{
 struct pt_image_section_cache *iscache;

 iscache = malloc(sizeof(*iscache));
 if (iscache)
  pt_iscache_init(iscache, name);

 return iscache;
}

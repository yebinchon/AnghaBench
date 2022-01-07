
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image_section_cache {int dummy; } ;


 int free (struct pt_image_section_cache*) ;
 int pt_iscache_fini (struct pt_image_section_cache*) ;

void pt_iscache_free(struct pt_image_section_cache *iscache)
{
 if (!iscache)
  return;

 pt_iscache_fini(iscache);
 free(iscache);
}

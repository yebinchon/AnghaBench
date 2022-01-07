
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image_section_cache {int lock; int name; } ;


 int free (int ) ;
 int mtx_destroy (int *) ;
 int pt_iscache_clear (struct pt_image_section_cache*) ;

void pt_iscache_fini(struct pt_image_section_cache *iscache)
{
 if (!iscache)
  return;

 (void) pt_iscache_clear(iscache);
 free(iscache->name);






}

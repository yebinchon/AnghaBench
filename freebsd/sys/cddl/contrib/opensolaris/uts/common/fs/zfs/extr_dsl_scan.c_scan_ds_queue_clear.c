
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int scan_ds_t ;
struct TYPE_3__ {int scn_queue; } ;
typedef TYPE_1__ dsl_scan_t ;


 int * avl_destroy_nodes (int *,void**) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
scan_ds_queue_clear(dsl_scan_t *scn)
{
 void *cookie = ((void*)0);
 scan_ds_t *sds;
 while ((sds = avl_destroy_nodes(&scn->scn_queue, &cookie)) != ((void*)0)) {
  kmem_free(sds, sizeof (*sds));
 }
}

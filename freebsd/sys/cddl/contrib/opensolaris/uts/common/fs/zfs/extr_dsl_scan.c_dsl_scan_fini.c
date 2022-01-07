
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int scn_prefetch_queue; int scn_queue; int * scn_taskq; } ;
typedef TYPE_1__ dsl_scan_t ;
struct TYPE_7__ {TYPE_1__* dp_scan; } ;
typedef TYPE_2__ dsl_pool_t ;


 int avl_destroy (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int scan_ds_queue_clear (TYPE_1__*) ;
 int taskq_destroy (int *) ;

void
dsl_scan_fini(dsl_pool_t *dp)
{
 if (dp->dp_scan != ((void*)0)) {
  dsl_scan_t *scn = dp->dp_scan;

  if (scn->scn_taskq != ((void*)0))
   taskq_destroy(scn->scn_taskq);
  scan_ds_queue_clear(scn);
  avl_destroy(&scn->scn_queue);
  avl_destroy(&scn->scn_prefetch_queue);

  kmem_free(dp->dp_scan, sizeof (dsl_scan_t));
  dp->dp_scan = ((void*)0);
 }
}

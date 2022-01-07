
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int sds_dsobj; } ;
typedef TYPE_1__ scan_ds_t ;
struct TYPE_9__ {int scn_queue; } ;
typedef TYPE_2__ dsl_scan_t ;


 int VERIFY (int ) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_remove (int *,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
scan_ds_queue_remove(dsl_scan_t *scn, uint64_t dsobj)
{
 scan_ds_t srch, *sds;

 srch.sds_dsobj = dsobj;

 sds = avl_find(&scn->scn_queue, &srch, ((void*)0));
 VERIFY(sds != ((void*)0));
 avl_remove(&scn->scn_queue, sds);
 kmem_free(sds, sizeof (*sds));
}

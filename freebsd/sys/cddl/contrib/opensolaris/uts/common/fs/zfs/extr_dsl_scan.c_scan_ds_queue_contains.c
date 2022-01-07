
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int sds_txg; int sds_dsobj; } ;
typedef TYPE_1__ scan_ds_t ;
struct TYPE_7__ {int scn_queue; } ;
typedef TYPE_2__ dsl_scan_t ;
typedef int boolean_t ;


 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;

__attribute__((used)) static boolean_t
scan_ds_queue_contains(dsl_scan_t *scn, uint64_t dsobj, uint64_t *txg)
{
 scan_ds_t srch, *sds;

 srch.sds_dsobj = dsobj;
 sds = avl_find(&scn->scn_queue, &srch, ((void*)0));
 if (sds != ((void*)0) && txg != ((void*)0))
  *txg = sds->sds_txg;
 return (sds != ((void*)0));
}

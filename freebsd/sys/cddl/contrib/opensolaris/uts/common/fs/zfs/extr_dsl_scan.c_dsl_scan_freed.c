
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;
typedef int dsl_scan_t ;
struct TYPE_6__ {int * dp_scan; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_NDVAS (int const*) ;
 int BP_IS_EMBEDDED (int const*) ;
 int dsl_scan_freed_dva (TYPE_1__*,int const*,int) ;
 int dsl_scan_is_running (int *) ;

void
dsl_scan_freed(spa_t *spa, const blkptr_t *bp)
{
 dsl_pool_t *dp = spa->spa_dsl_pool;
 dsl_scan_t *scn = dp->dp_scan;

 ASSERT(!BP_IS_EMBEDDED(bp));
 ASSERT(scn != ((void*)0));
 if (!dsl_scan_is_running(scn))
  return;

 for (int i = 0; i < BP_GET_NDVAS(bp); i++)
  dsl_scan_freed_dva(spa, bp, i);
}

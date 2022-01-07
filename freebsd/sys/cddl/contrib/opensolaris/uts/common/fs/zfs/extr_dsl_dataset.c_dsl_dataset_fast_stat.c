
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_11__ {TYPE_7__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_12__ {char* dds_origin; scalar_t__ dds_num_clones; int dds_is_snapshot; int dds_guid; int dds_inconsistent; int dds_creation_txg; } ;
typedef TYPE_2__ dmu_objset_stats_t ;
struct TYPE_13__ {int * dd_pool; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int dsl_dir_get_origin (TYPE_7__*,char*) ;
 scalar_t__ dsl_dir_is_clone (TYPE_7__*) ;
 int dsl_get_creationtxg (TYPE_1__*) ;
 int dsl_get_guid (TYPE_1__*) ;
 int dsl_get_inconsistent (TYPE_1__*) ;
 scalar_t__ dsl_get_numclones (TYPE_1__*) ;
 int dsl_pool_config_held (int *) ;

void
dsl_dataset_fast_stat(dsl_dataset_t *ds, dmu_objset_stats_t *stat)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 ASSERT(dsl_pool_config_held(dp));

 stat->dds_creation_txg = dsl_get_creationtxg(ds);
 stat->dds_inconsistent = dsl_get_inconsistent(ds);
 stat->dds_guid = dsl_get_guid(ds);
 stat->dds_origin[0] = '\0';
 if (ds->ds_is_snapshot) {
  stat->dds_is_snapshot = B_TRUE;
  stat->dds_num_clones = dsl_get_numclones(ds);
 } else {
  stat->dds_is_snapshot = B_FALSE;
  stat->dds_num_clones = 0;

  if (dsl_dir_is_clone(ds->ds_dir)) {
   dsl_dir_get_origin(ds->ds_dir, stat->dds_origin);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_11__ {int dl_object; } ;
struct TYPE_10__ {TYPE_4__ ds_remap_deadlist; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int * dp_spa; } ;


 int ASSERT (int ) ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int dmu_tx_is_syncing (int *) ;
 int dsl_dataset_remap_deadlist_exists (TYPE_3__*) ;
 int dsl_dataset_unset_remap_deadlist_object (TYPE_3__*,int *) ;
 int dsl_deadlist_close (TYPE_4__*) ;
 int dsl_deadlist_free (int ,int ,int *) ;
 int spa_feature_decr (int *,int ,int *) ;
 int spa_meta_objset (int *) ;

void
dsl_dataset_destroy_remap_deadlist(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 uint64_t remap_deadlist_object;
 spa_t *spa = ds->ds_dir->dd_pool->dp_spa;

 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(dsl_dataset_remap_deadlist_exists(ds));

 remap_deadlist_object = ds->ds_remap_deadlist.dl_object;
 dsl_deadlist_close(&ds->ds_remap_deadlist);
 dsl_deadlist_free(spa_meta_objset(spa), remap_deadlist_object, tx);
 dsl_dataset_unset_remap_deadlist_object(ds, tx);
 spa_feature_decr(spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
}

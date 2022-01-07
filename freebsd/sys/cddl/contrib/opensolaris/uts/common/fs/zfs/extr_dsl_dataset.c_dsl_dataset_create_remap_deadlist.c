
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_10__ {int ds_remap_deadlist; int ds_deadlist; int ds_remap_deadlist_lock; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_11__ {int ds_prev_snap_obj; } ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int * dp_spa; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int SPA_FEATURE_DEVICE_REMOVAL ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int UINT64_MAX ;
 int dmu_tx_is_syncing (int *) ;
 TYPE_5__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_dataset_set_remap_deadlist_object (TYPE_3__*,int ,int *) ;
 int dsl_deadlist_clone (int *,int ,int ,int *) ;
 int dsl_deadlist_open (int *,int ,int ) ;
 int spa_feature_incr (int *,int ,int *) ;
 int spa_feature_is_active (int *,int ) ;
 int spa_meta_objset (int *) ;

void
dsl_dataset_create_remap_deadlist(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 uint64_t remap_deadlist_obj;
 spa_t *spa = ds->ds_dir->dd_pool->dp_spa;

 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(MUTEX_HELD(&ds->ds_remap_deadlist_lock));




 ASSERT(spa_feature_is_active(spa, SPA_FEATURE_DEVICE_REMOVAL));

 remap_deadlist_obj = dsl_deadlist_clone(
     &ds->ds_deadlist, UINT64_MAX,
     dsl_dataset_phys(ds)->ds_prev_snap_obj, tx);
 dsl_dataset_set_remap_deadlist_object(ds,
     remap_deadlist_obj, tx);
 dsl_deadlist_open(&ds->ds_remap_deadlist, spa_meta_objset(spa),
     remap_deadlist_obj);
 spa_feature_incr(spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
}

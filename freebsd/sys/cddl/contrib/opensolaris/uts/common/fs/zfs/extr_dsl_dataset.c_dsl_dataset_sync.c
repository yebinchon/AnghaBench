
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zio_t ;
typedef size_t spa_feature_t ;
struct TYPE_14__ {scalar_t__* ds_resume_bytes; scalar_t__* ds_resume_object; scalar_t__* ds_resume_offset; scalar_t__* ds_feature_inuse; int ds_object; scalar_t__* ds_feature_activation_needed; int * ds_objset; int ds_fsid_guid; int ds_dbuf; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_15__ {size_t tx_txg; TYPE_1__* tx_pool; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_16__ {scalar_t__ ds_next_snap_obj; int ds_fsid_guid; } ;
struct TYPE_13__ {int dp_meta_objset; } ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int DS_FIELD_RESUME_BYTES ;
 int DS_FIELD_RESUME_OBJECT ;
 int DS_FIELD_RESUME_OFFSET ;
 size_t SPA_FEATURES ;
 size_t TXG_MASK ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,TYPE_3__*) ;
 int dmu_objset_sync (int *,int *,TYPE_3__*) ;
 int dmu_tx_is_syncing (TYPE_3__*) ;
 int dsl_dataset_activate_feature (int ,size_t,TYPE_3__*) ;
 TYPE_7__* dsl_dataset_phys (TYPE_2__*) ;
 int zap_update (int ,int ,int ,int,int,scalar_t__*,TYPE_3__*) ;

void
dsl_dataset_sync(dsl_dataset_t *ds, zio_t *zio, dmu_tx_t *tx)
{
 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(ds->ds_objset != ((void*)0));
 ASSERT(dsl_dataset_phys(ds)->ds_next_snap_obj == 0);





 dmu_buf_will_dirty(ds->ds_dbuf, tx);
 dsl_dataset_phys(ds)->ds_fsid_guid = ds->ds_fsid_guid;

 if (ds->ds_resume_bytes[tx->tx_txg & TXG_MASK] != 0) {
  VERIFY0(zap_update(tx->tx_pool->dp_meta_objset,
      ds->ds_object, DS_FIELD_RESUME_OBJECT, 8, 1,
      &ds->ds_resume_object[tx->tx_txg & TXG_MASK], tx));
  VERIFY0(zap_update(tx->tx_pool->dp_meta_objset,
      ds->ds_object, DS_FIELD_RESUME_OFFSET, 8, 1,
      &ds->ds_resume_offset[tx->tx_txg & TXG_MASK], tx));
  VERIFY0(zap_update(tx->tx_pool->dp_meta_objset,
      ds->ds_object, DS_FIELD_RESUME_BYTES, 8, 1,
      &ds->ds_resume_bytes[tx->tx_txg & TXG_MASK], tx));
  ds->ds_resume_object[tx->tx_txg & TXG_MASK] = 0;
  ds->ds_resume_offset[tx->tx_txg & TXG_MASK] = 0;
  ds->ds_resume_bytes[tx->tx_txg & TXG_MASK] = 0;
 }

 dmu_objset_sync(ds->ds_objset, zio, tx);

 for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
  if (ds->ds_feature_activation_needed[f]) {
   if (ds->ds_feature_inuse[f])
    continue;
   dsl_dataset_activate_feature(ds->ds_object, f, tx);
   ds->ds_feature_inuse[f] = B_TRUE;
  }
 }
}

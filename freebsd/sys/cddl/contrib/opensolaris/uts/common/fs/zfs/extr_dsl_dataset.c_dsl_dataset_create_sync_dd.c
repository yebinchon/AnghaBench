
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef void* uint64_t ;
typedef size_t spa_feature_t ;
typedef int objset_t ;
struct TYPE_32__ {int dp_spa; TYPE_3__* dp_origin_snap; int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_33__ {TYPE_6__* dd_dbuf; int dd_object; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_34__ {TYPE_2__* ds_dir; int ds_object; int ds_deadlist; TYPE_6__* ds_dbuf; scalar_t__* ds_feature_inuse; int ds_bp_rwlock; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_35__ {int ds_flags; scalar_t__ ds_guid; int ds_creation_txg; int ds_prev_snap_obj; int ds_prev_snap_txg; int ds_deadlist_obj; int ds_bp; int ds_uncompressed_bytes; int ds_compressed_bytes; int ds_referenced_bytes; int ds_creation_time; int ds_snapnames_zapobj; int ds_fsid_guid; int ds_dir_obj; } ;
typedef TYPE_4__ dsl_dataset_phys_t ;
struct TYPE_36__ {int tx_txg; } ;
typedef TYPE_5__ dmu_tx_t ;
struct TYPE_37__ {TYPE_4__* db_data; } ;
typedef TYPE_6__ dmu_buf_t ;
struct TYPE_31__ {scalar_t__ ds_num_children; int ds_flags; scalar_t__ ds_next_clones_obj; int ds_bp; int ds_uncompressed_bytes; int ds_compressed_bytes; int ds_referenced_bytes; int ds_creation_txg; } ;
struct TYPE_30__ {scalar_t__ dd_head_dataset_obj; scalar_t__ dd_clones; int dd_origin_obj; } ;


 int ASSERT (int) ;
 int DMU_OT_DSL_CLONES ;
 int DMU_OT_DSL_DATASET ;
 int DMU_OT_DSL_DS_SNAP_MAP ;
 int DMU_OT_NEXT_CLONES ;
 int DMU_OT_NONE ;
 int DS_FLAG_CI_DATASET ;
 int DS_FLAG_INCONSISTENT ;
 int DS_FLAG_UNIQUE_ACCURATE ;
 int FTAG ;
 int RW_READER ;
 size_t SPA_FEATURES ;
 scalar_t__ SPA_VERSION_DIR_CLONES ;
 scalar_t__ SPA_VERSION_NEXT_CLONES ;
 scalar_t__ SPA_VERSION_UNIQUE_ACCURATE ;
 int TXG_INITIAL ;
 int U8_TEXTPREP_TOUPPER ;
 int VERIFY0 (int ) ;
 int bzero (TYPE_4__*,int) ;
 int dmu_bonus_hold (int *,void*,int ,TYPE_6__**) ;
 int dmu_buf_rele (TYPE_6__*,int ) ;
 int dmu_buf_will_dirty (TYPE_6__*,TYPE_5__*) ;
 void* dmu_object_alloc (int *,int ,int ,int ,int,TYPE_5__*) ;
 int dmu_tx_is_syncing (TYPE_5__*) ;
 int dsl_dataset_activate_feature (void*,size_t,TYPE_5__*) ;
 int dsl_dataset_hold_obj (TYPE_1__*,scalar_t__,int ,TYPE_3__**) ;
 TYPE_15__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 int dsl_deadlist_alloc (int *,TYPE_5__*) ;
 int dsl_deadlist_clone (int *,int ,int ,TYPE_5__*) ;
 TYPE_10__* dsl_dir_phys (TYPE_2__*) ;
 int gethrestime_sec () ;
 int random_get_pseudo_bytes (void*,int) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 scalar_t__ spa_version (int ) ;
 int unique_create () ;
 int zap_add_int (int *,scalar_t__,void*,TYPE_5__*) ;
 void* zap_create (int *,int ,int ,int ,TYPE_5__*) ;
 int zap_create_norm (int *,int ,int ,int ,int ,TYPE_5__*) ;

uint64_t
dsl_dataset_create_sync_dd(dsl_dir_t *dd, dsl_dataset_t *origin,
    uint64_t flags, dmu_tx_t *tx)
{
 dsl_pool_t *dp = dd->dd_pool;
 dmu_buf_t *dbuf;
 dsl_dataset_phys_t *dsphys;
 uint64_t dsobj;
 objset_t *mos = dp->dp_meta_objset;

 if (origin == ((void*)0))
  origin = dp->dp_origin_snap;

 ASSERT(origin == ((void*)0) || origin->ds_dir->dd_pool == dp);
 ASSERT(origin == ((void*)0) || dsl_dataset_phys(origin)->ds_num_children > 0);
 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(dsl_dir_phys(dd)->dd_head_dataset_obj == 0);

 dsobj = dmu_object_alloc(mos, DMU_OT_DSL_DATASET, 0,
     DMU_OT_DSL_DATASET, sizeof (dsl_dataset_phys_t), tx);
 VERIFY0(dmu_bonus_hold(mos, dsobj, FTAG, &dbuf));
 dmu_buf_will_dirty(dbuf, tx);
 dsphys = dbuf->db_data;
 bzero(dsphys, sizeof (dsl_dataset_phys_t));
 dsphys->ds_dir_obj = dd->dd_object;
 dsphys->ds_flags = flags;
 dsphys->ds_fsid_guid = unique_create();
 do {
  (void) random_get_pseudo_bytes((void*)&dsphys->ds_guid,
      sizeof (dsphys->ds_guid));
 } while (dsphys->ds_guid == 0);
 dsphys->ds_snapnames_zapobj =
     zap_create_norm(mos, U8_TEXTPREP_TOUPPER, DMU_OT_DSL_DS_SNAP_MAP,
     DMU_OT_NONE, 0, tx);
 dsphys->ds_creation_time = gethrestime_sec();
 dsphys->ds_creation_txg = tx->tx_txg == TXG_INITIAL ? 1 : tx->tx_txg;

 if (origin == ((void*)0)) {
  dsphys->ds_deadlist_obj = dsl_deadlist_alloc(mos, tx);
 } else {
  dsl_dataset_t *ohds;

  dsphys->ds_prev_snap_obj = origin->ds_object;
  dsphys->ds_prev_snap_txg =
      dsl_dataset_phys(origin)->ds_creation_txg;
  dsphys->ds_referenced_bytes =
      dsl_dataset_phys(origin)->ds_referenced_bytes;
  dsphys->ds_compressed_bytes =
      dsl_dataset_phys(origin)->ds_compressed_bytes;
  dsphys->ds_uncompressed_bytes =
      dsl_dataset_phys(origin)->ds_uncompressed_bytes;
  rrw_enter(&origin->ds_bp_rwlock, RW_READER, FTAG);
  dsphys->ds_bp = dsl_dataset_phys(origin)->ds_bp;
  rrw_exit(&origin->ds_bp_rwlock, FTAG);





  dsphys->ds_flags |= dsl_dataset_phys(origin)->ds_flags &
      (DS_FLAG_INCONSISTENT | DS_FLAG_CI_DATASET);

  for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
   if (origin->ds_feature_inuse[f])
    dsl_dataset_activate_feature(dsobj, f, tx);
  }

  dmu_buf_will_dirty(origin->ds_dbuf, tx);
  dsl_dataset_phys(origin)->ds_num_children++;

  VERIFY0(dsl_dataset_hold_obj(dp,
      dsl_dir_phys(origin->ds_dir)->dd_head_dataset_obj,
      FTAG, &ohds));
  dsphys->ds_deadlist_obj = dsl_deadlist_clone(&ohds->ds_deadlist,
      dsphys->ds_prev_snap_txg, dsphys->ds_prev_snap_obj, tx);
  dsl_dataset_rele(ohds, FTAG);

  if (spa_version(dp->dp_spa) >= SPA_VERSION_NEXT_CLONES) {
   if (dsl_dataset_phys(origin)->ds_next_clones_obj == 0) {
    dsl_dataset_phys(origin)->ds_next_clones_obj =
        zap_create(mos,
        DMU_OT_NEXT_CLONES, DMU_OT_NONE, 0, tx);
   }
   VERIFY0(zap_add_int(mos,
       dsl_dataset_phys(origin)->ds_next_clones_obj,
       dsobj, tx));
  }

  dmu_buf_will_dirty(dd->dd_dbuf, tx);
  dsl_dir_phys(dd)->dd_origin_obj = origin->ds_object;
  if (spa_version(dp->dp_spa) >= SPA_VERSION_DIR_CLONES) {
   if (dsl_dir_phys(origin->ds_dir)->dd_clones == 0) {
    dmu_buf_will_dirty(origin->ds_dir->dd_dbuf, tx);
    dsl_dir_phys(origin->ds_dir)->dd_clones =
        zap_create(mos,
        DMU_OT_DSL_CLONES, DMU_OT_NONE, 0, tx);
   }
   VERIFY0(zap_add_int(mos,
       dsl_dir_phys(origin->ds_dir)->dd_clones,
       dsobj, tx));
  }
 }

 if (spa_version(dp->dp_spa) >= SPA_VERSION_UNIQUE_ACCURATE)
  dsphys->ds_flags |= DS_FLAG_UNIQUE_ACCURATE;

 dmu_buf_rele(dbuf, FTAG);

 dmu_buf_will_dirty(dd->dd_dbuf, tx);
 dsl_dir_phys(dd)->dd_head_dataset_obj = dsobj;

 return (dsobj);
}

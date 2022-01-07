
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint64_t ;
struct drr_begin {int drr_flags; scalar_t__ drr_fromguid; int drr_toguid; int* drr_toname; int drr_type; int drr_versioninfo; } ;
typedef int objset_t ;
struct TYPE_22__ {int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dsl_dir_t ;
struct TYPE_23__ {int ds_bp_rwlock; int ds_dbuf; int * ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_24__ {scalar_t__ drba_snapobj; char const* drba_origin; TYPE_1__* drba_cookie; int drba_cred; } ;
typedef TYPE_4__ dmu_recv_begin_arg_t ;
struct TYPE_25__ {int ds_flags; } ;
struct TYPE_21__ {char* drc_tofs; TYPE_3__* drc_ds; scalar_t__ drc_resumable; int drc_newfs; struct drr_begin* drc_drrb; } ;


 scalar_t__ BP_IS_HOLE (int ) ;
 int B_TRUE ;
 int DMU_BACKUP_FEATURE_COMPRESSED ;
 int DMU_BACKUP_FEATURE_EMBED_DATA ;
 int DMU_BACKUP_FEATURE_LARGE_BLOCKS ;
 int DMU_GET_FEATUREFLAGS (int ) ;
 int DRR_FLAG_CI_DATA ;
 int DS_FIELD_RESUME_BYTES ;
 int DS_FIELD_RESUME_COMPRESSOK ;
 int DS_FIELD_RESUME_EMBEDOK ;
 int DS_FIELD_RESUME_FROMGUID ;
 int DS_FIELD_RESUME_LARGEBLOCK ;
 int DS_FIELD_RESUME_OBJECT ;
 int DS_FIELD_RESUME_OFFSET ;
 int DS_FIELD_RESUME_TOGUID ;
 int DS_FIELD_RESUME_TONAME ;
 int DS_FLAG_CI_DATASET ;
 int DS_FLAG_INCONSISTENT ;
 int FTAG ;
 int RW_READER ;
 int VERIFY0 (int) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dmu_objset_create_impl (int ,TYPE_3__*,int ,int ,int *) ;
 int dmu_recv_tag ;
 TYPE_2__* dmu_tx_pool (int *) ;
 int dsl_dataset_create_sync (int *,scalar_t__,TYPE_3__*,int,int ,int *) ;
 int dsl_dataset_get_blkptr (TYPE_3__*) ;
 int dsl_dataset_hold (TYPE_2__*,char const*,int ,TYPE_3__**) ;
 int dsl_dataset_hold_obj (TYPE_2__*,scalar_t__,int ,TYPE_3__**) ;
 int dsl_dataset_own_obj (TYPE_2__*,int,int ,TYPE_3__**) ;
 TYPE_9__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 int dsl_dataset_zapify (TYPE_3__*,int *) ;
 int dsl_dir_hold (TYPE_2__*,char const*,int ,int **,char const**) ;
 int dsl_dir_rele (int *,int ) ;
 scalar_t__ recv_clone_name ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int spa_history_log_internal_ds (TYPE_3__*,char*,int *,char*) ;
 int strlen (int*) ;
 scalar_t__ strrchr (char const*,char) ;
 int zap_add (int *,int,int ,int,int,int*,int *) ;

__attribute__((used)) static void
dmu_recv_begin_sync(void *arg, dmu_tx_t *tx)
{
 dmu_recv_begin_arg_t *drba = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;
 struct drr_begin *drrb = drba->drba_cookie->drc_drrb;
 const char *tofs = drba->drba_cookie->drc_tofs;
 dsl_dataset_t *ds, *newds;
 uint64_t dsobj;
 int error;
 uint64_t crflags = 0;

 if (drrb->drr_flags & DRR_FLAG_CI_DATA)
  crflags |= DS_FLAG_CI_DATASET;

 error = dsl_dataset_hold(dp, tofs, FTAG, &ds);
 if (error == 0) {

  dsl_dataset_t *snap = ((void*)0);
  if (drba->drba_snapobj != 0) {
   VERIFY0(dsl_dataset_hold_obj(dp,
       drba->drba_snapobj, FTAG, &snap));
  }
  dsobj = dsl_dataset_create_sync(ds->ds_dir, recv_clone_name,
      snap, crflags, drba->drba_cred, tx);
  if (drba->drba_snapobj != 0)
   dsl_dataset_rele(snap, FTAG);
  dsl_dataset_rele(ds, FTAG);
 } else {
  dsl_dir_t *dd;
  const char *tail;
  dsl_dataset_t *origin = ((void*)0);

  VERIFY0(dsl_dir_hold(dp, tofs, FTAG, &dd, &tail));

  if (drba->drba_origin != ((void*)0)) {
   VERIFY0(dsl_dataset_hold(dp, drba->drba_origin,
       FTAG, &origin));
  }


  dsobj = dsl_dataset_create_sync(dd,
      strrchr(tofs, '/') + 1,
      origin, crflags, drba->drba_cred, tx);
  if (origin != ((void*)0))
   dsl_dataset_rele(origin, FTAG);
  dsl_dir_rele(dd, FTAG);
  drba->drba_cookie->drc_newfs = B_TRUE;
 }
 VERIFY0(dsl_dataset_own_obj(dp, dsobj, dmu_recv_tag, &newds));

 if (drba->drba_cookie->drc_resumable) {
  dsl_dataset_zapify(newds, tx);
  if (drrb->drr_fromguid != 0) {
   VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_FROMGUID,
       8, 1, &drrb->drr_fromguid, tx));
  }
  VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_TOGUID,
      8, 1, &drrb->drr_toguid, tx));
  VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_TONAME,
      1, strlen(drrb->drr_toname) + 1, drrb->drr_toname, tx));
  uint64_t one = 1;
  uint64_t zero = 0;
  VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_OBJECT,
      8, 1, &one, tx));
  VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_OFFSET,
      8, 1, &zero, tx));
  VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_BYTES,
      8, 1, &zero, tx));
  if (DMU_GET_FEATUREFLAGS(drrb->drr_versioninfo) &
      DMU_BACKUP_FEATURE_LARGE_BLOCKS) {
   VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_LARGEBLOCK,
       8, 1, &one, tx));
  }
  if (DMU_GET_FEATUREFLAGS(drrb->drr_versioninfo) &
      DMU_BACKUP_FEATURE_EMBED_DATA) {
   VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_EMBEDOK,
       8, 1, &one, tx));
  }
  if (DMU_GET_FEATUREFLAGS(drrb->drr_versioninfo) &
      DMU_BACKUP_FEATURE_COMPRESSED) {
   VERIFY0(zap_add(mos, dsobj, DS_FIELD_RESUME_COMPRESSOK,
       8, 1, &one, tx));
  }
 }

 dmu_buf_will_dirty(newds->ds_dbuf, tx);
 dsl_dataset_phys(newds)->ds_flags |= DS_FLAG_INCONSISTENT;





 rrw_enter(&newds->ds_bp_rwlock, RW_READER, FTAG);
 if (BP_IS_HOLE(dsl_dataset_get_blkptr(newds))) {
  (void) dmu_objset_create_impl(dp->dp_spa,
      newds, dsl_dataset_get_blkptr(newds), drrb->drr_type, tx);
 }
 rrw_exit(&newds->ds_bp_rwlock, FTAG);

 drba->drba_cookie->drc_ds = newds;

 spa_history_log_internal_ds(newds, "receive", tx, "");
}

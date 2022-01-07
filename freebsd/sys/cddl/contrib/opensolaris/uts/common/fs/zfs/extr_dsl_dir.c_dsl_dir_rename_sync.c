
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int uint64_t ;
typedef int ss_cnt ;
typedef int objset_t ;
typedef int fs_cnt ;
struct TYPE_23__ {int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_24__ {int dd_object; int dd_myname; struct TYPE_24__* dd_parent; int dd_dbuf; TYPE_1__* dd_pool; } ;
typedef TYPE_3__ dsl_dir_t ;
struct TYPE_25__ {int ddra_newname; int ddra_oldname; } ;
typedef TYPE_4__ dsl_dir_rename_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_22__ {int * dp_meta_objset; } ;
struct TYPE_21__ {int dd_child_dir_zapobj; int dd_parent_obj; int dd_used_bytes; int dd_reserved; int dd_uncompressed_bytes; int dd_compressed_bytes; } ;


 int ASSERT0 (int) ;
 int DD_FIELD_FILESYSTEM_COUNT ;
 int DD_FIELD_SNAPSHOT_COUNT ;
 int DD_USED_CHILD ;
 int DD_USED_CHILD_RSRV ;
 TYPE_3__* FTAG ;
 int SPA_FEATURE_FS_SS_LIMIT ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 TYPE_2__* dmu_tx_pool (int *) ;
 int dsl_dir_diduse_space (TYPE_3__*,int ,int ,int ,int ,int *) ;
 int dsl_dir_hold (TYPE_2__*,int ,TYPE_3__*,TYPE_3__**,char const**) ;
 int dsl_dir_hold_obj (TYPE_2__*,int ,int *,TYPE_3__*,TYPE_3__**) ;
 TYPE_10__* dsl_dir_phys (TYPE_3__*) ;
 int dsl_dir_rele (TYPE_3__*,TYPE_3__*) ;
 int dsl_fs_ss_count_adjust (TYPE_3__*,int ,int ,int *) ;
 int dsl_prop_notify_all (TYPE_3__*) ;
 scalar_t__ spa_feature_is_active (int ,int ) ;
 int spa_history_log_internal_dd (TYPE_3__*,char*,int *,char*,int ) ;
 int strcpy (int ,char const*) ;
 int zap_add (int *,int ,int ,int,int,int *,int *) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;
 int zap_remove (int *,int ,int ,int *) ;
 int zfsvfs_update_fromname (int ,int ) ;
 int zvol_rename_minors (int ,int ) ;

__attribute__((used)) static void
dsl_dir_rename_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dir_rename_arg_t *ddra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *dd, *newparent;
 const char *mynewname;
 int error;
 objset_t *mos = dp->dp_meta_objset;

 VERIFY0(dsl_dir_hold(dp, ddra->ddra_oldname, FTAG, &dd, ((void*)0)));
 VERIFY0(dsl_dir_hold(dp, ddra->ddra_newname, FTAG, &newparent,
     &mynewname));


 spa_history_log_internal_dd(dd, "rename", tx,
     "-> %s", ddra->ddra_newname);

 if (newparent != dd->dd_parent) {
  objset_t *os = dd->dd_pool->dp_meta_objset;
  uint64_t fs_cnt = 0;
  uint64_t ss_cnt = 0;





  if (spa_feature_is_active(dp->dp_spa,
      SPA_FEATURE_FS_SS_LIMIT)) {
   VERIFY0(zap_lookup(os, dd->dd_object,
       DD_FIELD_FILESYSTEM_COUNT, sizeof (fs_cnt), 1,
       &fs_cnt));

   fs_cnt++;

   VERIFY0(zap_lookup(os, dd->dd_object,
       DD_FIELD_SNAPSHOT_COUNT, sizeof (ss_cnt), 1,
       &ss_cnt));
  }

  dsl_fs_ss_count_adjust(dd->dd_parent, -fs_cnt,
      DD_FIELD_FILESYSTEM_COUNT, tx);
  dsl_fs_ss_count_adjust(newparent, fs_cnt,
      DD_FIELD_FILESYSTEM_COUNT, tx);

  dsl_fs_ss_count_adjust(dd->dd_parent, -ss_cnt,
      DD_FIELD_SNAPSHOT_COUNT, tx);
  dsl_fs_ss_count_adjust(newparent, ss_cnt,
      DD_FIELD_SNAPSHOT_COUNT, tx);

  dsl_dir_diduse_space(dd->dd_parent, DD_USED_CHILD,
      -dsl_dir_phys(dd)->dd_used_bytes,
      -dsl_dir_phys(dd)->dd_compressed_bytes,
      -dsl_dir_phys(dd)->dd_uncompressed_bytes, tx);
  dsl_dir_diduse_space(newparent, DD_USED_CHILD,
      dsl_dir_phys(dd)->dd_used_bytes,
      dsl_dir_phys(dd)->dd_compressed_bytes,
      dsl_dir_phys(dd)->dd_uncompressed_bytes, tx);

  if (dsl_dir_phys(dd)->dd_reserved >
      dsl_dir_phys(dd)->dd_used_bytes) {
   uint64_t unused_rsrv = dsl_dir_phys(dd)->dd_reserved -
       dsl_dir_phys(dd)->dd_used_bytes;

   dsl_dir_diduse_space(dd->dd_parent, DD_USED_CHILD_RSRV,
       -unused_rsrv, 0, 0, tx);
   dsl_dir_diduse_space(newparent, DD_USED_CHILD_RSRV,
       unused_rsrv, 0, 0, tx);
  }
 }

 dmu_buf_will_dirty(dd->dd_dbuf, tx);


 error = zap_remove(mos,
     dsl_dir_phys(dd->dd_parent)->dd_child_dir_zapobj,
     dd->dd_myname, tx);
 ASSERT0(error);

 (void) strcpy(dd->dd_myname, mynewname);
 dsl_dir_rele(dd->dd_parent, dd);
 dsl_dir_phys(dd)->dd_parent_obj = newparent->dd_object;
 VERIFY0(dsl_dir_hold_obj(dp,
     newparent->dd_object, ((void*)0), dd, &dd->dd_parent));


 VERIFY0(zap_add(mos, dsl_dir_phys(newparent)->dd_child_dir_zapobj,
     dd->dd_myname, 8, 1, &dd->dd_object, tx));
 dsl_prop_notify_all(dd);

 dsl_dir_rele(newparent, FTAG);
 dsl_dir_rele(dd, FTAG);
}

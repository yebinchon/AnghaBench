
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_13__ {int * dp_meta_objset; int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_14__ {int dd_object; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef int cnt ;


 int ASSERT (int) ;
 int DD_FIELD_FILESYSTEM_COUNT ;
 int DD_FIELD_SNAPSHOT_COUNT ;
 int DS_CREATE_FLAG_NODIRTY ;
 int FTAG ;
 int SPA_FEATURE_FS_SS_LIMIT ;
 int VERIFY0 (int ) ;
 int dmu_tx_is_syncing (int *) ;
 int dsl_dataset_create_sync_dd (TYPE_2__*,int *,int,int *) ;
 int dsl_dataset_hold_obj (TYPE_1__*,int,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_zero_zil (int *,int *) ;
 int dsl_deleg_set_create_perms (TYPE_2__*,int *,int *) ;
 int dsl_dir_create_sync (TYPE_1__*,TYPE_2__*,char const*,int *) ;
 int dsl_dir_hold_obj (TYPE_1__*,int,char const*,int ,TYPE_2__**) ;
 int dsl_dir_rele (TYPE_2__*,int ) ;
 int dsl_dir_zapify (TYPE_2__*,int *) ;
 scalar_t__ spa_feature_is_active (int ,int ) ;
 int zap_add (int *,int ,int ,int,int,int*,int *) ;

uint64_t
dsl_dataset_create_sync(dsl_dir_t *pdd, const char *lastname,
    dsl_dataset_t *origin, uint64_t flags, cred_t *cr, dmu_tx_t *tx)
{
 dsl_pool_t *dp = pdd->dd_pool;
 uint64_t dsobj, ddobj;
 dsl_dir_t *dd;

 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(lastname[0] != '@');

 ddobj = dsl_dir_create_sync(dp, pdd, lastname, tx);
 VERIFY0(dsl_dir_hold_obj(dp, ddobj, lastname, FTAG, &dd));

 dsobj = dsl_dataset_create_sync_dd(dd, origin,
     flags & ~DS_CREATE_FLAG_NODIRTY, tx);

 dsl_deleg_set_create_perms(dd, tx, cr);





 if (spa_feature_is_active(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT)) {
  uint64_t cnt = 0;
  objset_t *os = dd->dd_pool->dp_meta_objset;

  dsl_dir_zapify(dd, tx);
  VERIFY0(zap_add(os, dd->dd_object, DD_FIELD_FILESYSTEM_COUNT,
      sizeof (cnt), 1, &cnt, tx));
  VERIFY0(zap_add(os, dd->dd_object, DD_FIELD_SNAPSHOT_COUNT,
      sizeof (cnt), 1, &cnt, tx));
 }

 dsl_dir_rele(dd, FTAG);





 if (origin != ((void*)0) && !(flags & DS_CREATE_FLAG_NODIRTY)) {
  dsl_dataset_t *ds;

  VERIFY0(dsl_dataset_hold_obj(dp, dsobj, FTAG, &ds));
  dsl_dataset_zero_zil(ds, tx);
  dsl_dataset_rele(ds, FTAG);
 }

 return (dsobj);
}

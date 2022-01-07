
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int dsl_pool_t ;
struct TYPE_6__ {int ds_prev; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int * ddsa_props; int ddsa_snaps; } ;
typedef TYPE_2__ dsl_dataset_snapshot_arg_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZPROP_SRC_LOCAL ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,char*,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dataset_snapshot_sync_impl (TYPE_1__*,char*,int *) ;
 int dsl_props_set_sync_impl (int ,int ,int *,int *) ;
 int * nvlist_next_nvpair (int ,int *) ;
 char* nvpair_name (int *) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;

void
dsl_dataset_snapshot_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_snapshot_arg_t *ddsa = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 nvpair_t *pair;

 for (pair = nvlist_next_nvpair(ddsa->ddsa_snaps, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(ddsa->ddsa_snaps, pair)) {
  dsl_dataset_t *ds;
  char *name, *atp;
  char dsname[ZFS_MAX_DATASET_NAME_LEN];

  name = nvpair_name(pair);
  atp = strchr(name, '@');
  (void) strlcpy(dsname, name, atp - name + 1);
  VERIFY0(dsl_dataset_hold(dp, dsname, FTAG, &ds));

  dsl_dataset_snapshot_sync_impl(ds, atp + 1, tx);
  if (ddsa->ddsa_props != ((void*)0)) {
   dsl_props_set_sync_impl(ds->ds_prev,
       ZPROP_SRC_LOCAL, ddsa->ddsa_props, tx);
  }
  dsl_dataset_rele(ds, FTAG);
 }
}

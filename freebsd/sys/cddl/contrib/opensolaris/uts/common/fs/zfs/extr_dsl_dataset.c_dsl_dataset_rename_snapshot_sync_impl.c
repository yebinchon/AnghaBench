
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint64_t ;
struct TYPE_15__ {int dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_16__ {int ds_object; int ds_snapname; int ds_lock; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_17__ {char* ddrsa_oldsnapname; char* ddrsa_newsnapname; char* ddrsa_fsname; int * ddrsa_tx; } ;
typedef TYPE_3__ dsl_dataset_rename_snapshot_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_14__ {int ds_snapnames_zapobj; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int ENOENT ;
 int FTAG ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int VERIFY0 (int ) ;
 int dsl_dataset_hold_obj (TYPE_1__*,int ,int ,TYPE_2__**) ;
 TYPE_10__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dataset_snap_lookup (TYPE_2__*,char*,int *) ;
 int dsl_dataset_snap_remove (TYPE_2__*,char*,int *,int ) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*,char*) ;
 int strcpy (int ,char*) ;
 int zap_add (int ,int ,int ,int,int,int *,int *) ;
 int zfsvfs_update_fromname (char*,char*) ;
 int zvol_rename_minors (char*,char*) ;

__attribute__((used)) static int
dsl_dataset_rename_snapshot_sync_impl(dsl_pool_t *dp,
    dsl_dataset_t *hds, void *arg)
{





 dsl_dataset_rename_snapshot_arg_t *ddrsa = arg;
 dsl_dataset_t *ds;
 uint64_t val;
 dmu_tx_t *tx = ddrsa->ddrsa_tx;
 int error;

 error = dsl_dataset_snap_lookup(hds, ddrsa->ddrsa_oldsnapname, &val);
 ASSERT(error == 0 || error == ENOENT);
 if (error == ENOENT) {

  return (0);
 }

 VERIFY0(dsl_dataset_hold_obj(dp, val, FTAG, &ds));


 spa_history_log_internal_ds(ds, "rename", tx,
     "-> @%s", ddrsa->ddrsa_newsnapname);

 VERIFY0(dsl_dataset_snap_remove(hds, ddrsa->ddrsa_oldsnapname, tx,
     B_FALSE));
 mutex_enter(&ds->ds_lock);
 (void) strcpy(ds->ds_snapname, ddrsa->ddrsa_newsnapname);
 mutex_exit(&ds->ds_lock);
 VERIFY0(zap_add(dp->dp_meta_objset,
     dsl_dataset_phys(hds)->ds_snapnames_zapobj,
     ds->ds_snapname, 8, 1, &ds->ds_object, tx));
 dsl_dataset_rele(ds, FTAG);

 return (0);
}

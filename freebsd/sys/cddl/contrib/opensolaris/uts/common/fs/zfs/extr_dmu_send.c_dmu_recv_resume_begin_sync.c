
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int recvname ;
typedef int dsl_pool_t ;
struct TYPE_13__ {int ds_bp_rwlock; int ds_dbuf; int ds_object; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_14__ {TYPE_1__* drba_cookie; } ;
typedef TYPE_3__ dmu_recv_begin_arg_t ;
struct TYPE_15__ {int ds_flags; } ;
struct TYPE_12__ {char* drc_tofs; TYPE_2__* drc_ds; int drc_newfs; } ;


 int ASSERT (int) ;
 int BP_IS_HOLE (int ) ;
 int B_TRUE ;
 int DS_FLAG_INCONSISTENT ;
 int DS_IS_INCONSISTENT (TYPE_2__*) ;
 int FTAG ;
 int RW_READER ;
 int VERIFY0 (scalar_t__) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dmu_recv_tag ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_get_blkptr (TYPE_2__*) ;
 scalar_t__ dsl_dataset_hold (int *,char const*,int ,TYPE_2__**) ;
 scalar_t__ dsl_dataset_own_obj (int *,int ,int ,TYPE_2__**) ;
 TYPE_6__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 char* recv_clone_name ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*) ;

__attribute__((used)) static void
dmu_recv_resume_begin_sync(void *arg, dmu_tx_t *tx)
{
 dmu_recv_begin_arg_t *drba = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 const char *tofs = drba->drba_cookie->drc_tofs;
 dsl_dataset_t *ds;
 uint64_t dsobj;

 char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];

 (void) snprintf(recvname, sizeof (recvname), "%s/%s",
     tofs, recv_clone_name);

 if (dsl_dataset_hold(dp, recvname, FTAG, &ds) != 0) {

  VERIFY0(dsl_dataset_hold(dp, tofs, FTAG, &ds));
  drba->drba_cookie->drc_newfs = B_TRUE;
 }


 ASSERT(DS_IS_INCONSISTENT(ds));
 dmu_buf_will_dirty(ds->ds_dbuf, tx);
 dsl_dataset_phys(ds)->ds_flags &= ~DS_FLAG_INCONSISTENT;
 dsobj = ds->ds_object;
 dsl_dataset_rele(ds, FTAG);

 VERIFY0(dsl_dataset_own_obj(dp, dsobj, dmu_recv_tag, &ds));

 dmu_buf_will_dirty(ds->ds_dbuf, tx);
 dsl_dataset_phys(ds)->ds_flags |= DS_FLAG_INCONSISTENT;

 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 ASSERT(!BP_IS_HOLE(dsl_dataset_get_blkptr(ds)));
 rrw_exit(&ds->ds_bp_rwlock, FTAG);

 drba->drba_cookie->drc_ds = ds;

 spa_history_log_internal_ds(ds, "resume receive", tx, "");
}

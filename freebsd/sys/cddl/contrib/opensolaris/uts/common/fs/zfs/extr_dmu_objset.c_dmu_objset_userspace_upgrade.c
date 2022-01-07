
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int os_flags; } ;
typedef TYPE_1__ objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_buf_t ;


 int EINTR ;
 int EINVAL ;
 int ENOTSUP ;
 int FALSE ;
 int FORREAL ;
 int FTAG ;
 int JUSTLOOKING ;
 int OBJSET_FLAG_USERACCOUNTING_COMPLETE ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 int dmu_bonus_hold (TYPE_1__*,scalar_t__,int ,int **) ;
 int dmu_buf_rele (int *,int ) ;
 int dmu_buf_will_dirty (int *,int *) ;
 int dmu_object_next (TYPE_1__*,scalar_t__*,int ,int ) ;
 scalar_t__ dmu_objset_is_snapshot (TYPE_1__*) ;
 int dmu_objset_pool (TYPE_1__*) ;
 scalar_t__ dmu_objset_userspace_present (TYPE_1__*) ;
 int dmu_objset_userused_enabled (TYPE_1__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_1__*) ;
 int dmu_tx_hold_bonus (int *,scalar_t__) ;
 scalar_t__ issig (int ) ;
 int txg_wait_synced (int ,int ) ;

int
dmu_objset_userspace_upgrade(objset_t *os)
{
 uint64_t obj;
 int err = 0;

 if (dmu_objset_userspace_present(os))
  return (0);
 if (!dmu_objset_userused_enabled(os))
  return (SET_ERROR(ENOTSUP));
 if (dmu_objset_is_snapshot(os))
  return (SET_ERROR(EINVAL));
 for (obj = 0; err == 0; err = dmu_object_next(os, &obj, FALSE, 0)) {
  dmu_tx_t *tx;
  dmu_buf_t *db;
  int objerr;

  if (issig(JUSTLOOKING) && issig(FORREAL))
   return (SET_ERROR(EINTR));

  objerr = dmu_bonus_hold(os, obj, FTAG, &db);
  if (objerr != 0)
   continue;
  tx = dmu_tx_create(os);
  dmu_tx_hold_bonus(tx, obj);
  objerr = dmu_tx_assign(tx, TXG_WAIT);
  if (objerr != 0) {
   dmu_tx_abort(tx);
   continue;
  }
  dmu_buf_will_dirty(db, tx);
  dmu_buf_rele(db, FTAG);
  dmu_tx_commit(tx);
 }

 os->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
 txg_wait_synced(dmu_objset_pool(os), 0);
 return (0);
}

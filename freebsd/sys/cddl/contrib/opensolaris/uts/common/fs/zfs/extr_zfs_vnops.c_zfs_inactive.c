
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_unlinked; scalar_t__ z_atime_dirty; int z_atime; int * z_sa_hdl; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {int z_teardown_inactive_lock; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int vnode_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef int caller_context_t ;


 int B_FALSE ;
 int RW_READER ;
 int SA_ZPL_ATIME (TYPE_2__*) ;
 int TXG_WAIT ;
 TYPE_1__* VTOZ (int *) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int sa_update (int *,int ,void*,int,int *) ;
 int vrecycle (int *) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;

void
zfs_inactive(vnode_t *vp, cred_t *cr, caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 int error;

 rw_enter(&zfsvfs->z_teardown_inactive_lock, RW_READER);
 if (zp->z_sa_hdl == ((void*)0)) {




  rw_exit(&zfsvfs->z_teardown_inactive_lock);
  vrecycle(vp);
  return;
 }

 if (zp->z_unlinked) {



  rw_exit(&zfsvfs->z_teardown_inactive_lock);
  vrecycle(vp);
  return;
 }

 if (zp->z_atime_dirty && zp->z_unlinked == 0) {
  dmu_tx_t *tx = dmu_tx_create(zfsvfs->z_os);

  dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
  zfs_sa_upgrade_txholds(tx, zp);
  error = dmu_tx_assign(tx, TXG_WAIT);
  if (error) {
   dmu_tx_abort(tx);
  } else {
   (void) sa_update(zp->z_sa_hdl, SA_ZPL_ATIME(zfsvfs),
       (void *)&zp->z_atime, sizeof (zp->z_atime), tx);
   zp->z_atime_dirty = 0;
   dmu_tx_commit(tx);
  }
 }
 rw_exit(&zfsvfs->z_teardown_inactive_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;


struct TYPE_22__ {int z_sa_hdl; int z_id; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
struct TYPE_23__ {TYPE_14__* z_os; int z_unlinkedobj; int * z_log; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_24__ {scalar_t__ v_type; } ;
typedef TYPE_3__ vnode_t ;
typedef int uint64_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
struct TYPE_21__ {scalar_t__ os_sync; } ;


 int B_FALSE ;
 int ENOTDIR ;
 int FALSE ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 int TX_RMDIR ;
 scalar_t__ VDIR ;
 TYPE_1__* VTOZ (TYPE_3__*) ;
 int ZEXISTS ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_NO_OBJECT ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int cache_purge (TYPE_3__*) ;
 int ct ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_14__*) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int dmu_tx_mark_netfree (int *) ;
 int vnevent_rmdir (TYPE_3__*,TYPE_3__*,char*,int ) ;
 int zfs_link_destroy (TYPE_1__*,char*,TYPE_1__*,int *,int ,int *) ;
 int zfs_log_remove (int *,int *,int ,TYPE_1__*,char*,int ) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_zaccess_delete (TYPE_1__*,TYPE_1__*,int *) ;
 int zil_commit (int *,int ) ;

__attribute__((used)) static int
zfs_rmdir(vnode_t *dvp, vnode_t *vp, char *name, cred_t *cr)
{
 znode_t *dzp = VTOZ(dvp);
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = dzp->z_zfsvfs;
 zilog_t *zilog;
 dmu_tx_t *tx;
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 ZFS_VERIFY_ZP(zp);
 zilog = zfsvfs->z_log;


 if (error = zfs_zaccess_delete(dzp, zp, cr)) {
  goto out;
 }

 if (vp->v_type != VDIR) {
  error = SET_ERROR(ENOTDIR);
  goto out;
 }

 vnevent_rmdir(vp, dvp, name, ct);

 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_zap(tx, dzp->z_id, FALSE, name);
 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
 dmu_tx_hold_zap(tx, zfsvfs->z_unlinkedobj, FALSE, ((void*)0));
 zfs_sa_upgrade_txholds(tx, zp);
 zfs_sa_upgrade_txholds(tx, dzp);
 dmu_tx_mark_netfree(tx);
 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  dmu_tx_abort(tx);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 cache_purge(dvp);

 error = zfs_link_destroy(dzp, name, zp, tx, ZEXISTS, ((void*)0));

 if (error == 0) {
  uint64_t txtype = TX_RMDIR;
  zfs_log_remove(zilog, tx, txtype, dzp, name, ZFS_NO_OBJECT);
 }

 dmu_tx_commit(tx);

 cache_purge(vp);
out:
 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}

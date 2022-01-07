
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;


struct TYPE_26__ {int z_sa_hdl; scalar_t__ z_id; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
struct TYPE_27__ {TYPE_17__* z_os; scalar_t__ z_unlinkedobj; int * z_log; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int xattr_obj ;
struct TYPE_28__ {scalar_t__ v_type; int v_vflag; } ;
typedef TYPE_3__ vnode_t ;
typedef scalar_t__ uint64_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_25__ {scalar_t__ os_sync; } ;


 int ASSERT0 (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int EPERM ;
 scalar_t__ FALSE ;
 int SA_ZPL_XATTR (TYPE_2__*) ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 scalar_t__ TX_REMOVE ;
 scalar_t__ VDIR ;
 TYPE_1__* VTOZ (TYPE_3__*) ;
 int VV_NOSYNC ;
 int ZEXISTS ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int ZTOV (TYPE_1__*) ;
 int ct ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_17__*) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_zap (int *,scalar_t__,scalar_t__,char*) ;
 int dmu_tx_mark_netfree (int *) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 int vnevent_remove (TYPE_3__*,TYPE_3__*,char*,int ) ;
 int vrele (int ) ;
 int zfs_link_destroy (TYPE_1__*,char*,TYPE_1__*,int *,int ,scalar_t__*) ;
 int zfs_log_remove (int *,int *,scalar_t__,TYPE_1__*,char*,scalar_t__) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_unlinked_add (TYPE_1__*,int *) ;
 int zfs_zaccess_delete (TYPE_1__*,TYPE_1__*,int *) ;
 int zfs_zget (TYPE_2__*,scalar_t__,TYPE_1__**) ;
 int zil_commit (int *,int ) ;

__attribute__((used)) static int
zfs_remove(vnode_t *dvp, vnode_t *vp, char *name, cred_t *cr)
{
 znode_t *dzp = VTOZ(dvp);
 znode_t *zp = VTOZ(vp);
 znode_t *xzp;
 zfsvfs_t *zfsvfs = dzp->z_zfsvfs;
 zilog_t *zilog;
 uint64_t acl_obj, xattr_obj;
 uint64_t obj = 0;
 dmu_tx_t *tx;
 boolean_t unlinked, toobig = FALSE;
 uint64_t txtype;
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 ZFS_VERIFY_ZP(zp);
 zilog = zfsvfs->z_log;
 zp = VTOZ(vp);

 xattr_obj = 0;
 xzp = ((void*)0);

 if (error = zfs_zaccess_delete(dzp, zp, cr)) {
  goto out;
 }




 if (vp->v_type == VDIR) {
  error = SET_ERROR(EPERM);
  goto out;
 }

 vnevent_remove(vp, dvp, name, ct);

 obj = zp->z_id;


 error = sa_lookup(zp->z_sa_hdl, SA_ZPL_XATTR(zfsvfs),
     &xattr_obj, sizeof (xattr_obj));
 if (error == 0 && xattr_obj) {
  error = zfs_zget(zfsvfs, xattr_obj, &xzp);
  ASSERT0(error);
 }







 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_zap(tx, dzp->z_id, FALSE, name);
 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
 zfs_sa_upgrade_txholds(tx, zp);
 zfs_sa_upgrade_txholds(tx, dzp);

 if (xzp) {
  dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_TRUE);
  dmu_tx_hold_sa(tx, xzp->z_sa_hdl, B_FALSE);
 }


 dmu_tx_hold_zap(tx, zfsvfs->z_unlinkedobj, FALSE, ((void*)0));




 dmu_tx_mark_netfree(tx);

 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  dmu_tx_abort(tx);
  ZFS_EXIT(zfsvfs);
  return (error);
 }




 error = zfs_link_destroy(dzp, name, zp, tx, ZEXISTS, &unlinked);

 if (error) {
  dmu_tx_commit(tx);
  goto out;
 }

 if (unlinked) {
  zfs_unlinked_add(zp, tx);
  vp->v_vflag |= VV_NOSYNC;
 }

 txtype = TX_REMOVE;
 zfs_log_remove(zilog, tx, txtype, dzp, name, obj);

 dmu_tx_commit(tx);
out:

 if (xzp)
  vrele(ZTOV(xzp));

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}

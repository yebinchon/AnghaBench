
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_16__ {int z_sa_hdl; int z_id; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_17__ {int z_unlinkedobj; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zap_cursor_t ;
struct TYPE_18__ {int * za_name; int za_first_integer; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {scalar_t__ v_type; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int ENOENT ;
 int FALSE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int TXG_WAIT ;
 scalar_t__ VLNK ;
 scalar_t__ VREG ;
 int ZFS_DIRENT_OBJ (int ) ;
 TYPE_11__* ZTOV (TYPE_1__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_zap (int *,int ,int ,int *) ;
 int dmu_tx_mark_netfree (int *) ;
 int vn_lock (TYPE_11__*,int) ;
 int vput (TYPE_11__*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 int zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zfs_link_destroy (TYPE_1__*,int *,TYPE_1__*,int *,int ,int *) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_zget (TYPE_2__*,int ,TYPE_1__**) ;

__attribute__((used)) static int
zfs_purgedir(znode_t *dzp)
{
 zap_cursor_t zc;
 zap_attribute_t zap;
 znode_t *xzp;
 dmu_tx_t *tx;
 zfsvfs_t *zfsvfs = dzp->z_zfsvfs;
 int skipped = 0;
 int error;

 for (zap_cursor_init(&zc, zfsvfs->z_os, dzp->z_id);
     (error = zap_cursor_retrieve(&zc, &zap)) == 0;
     zap_cursor_advance(&zc)) {
  error = zfs_zget(zfsvfs,
      ZFS_DIRENT_OBJ(zap.za_first_integer), &xzp);
  if (error) {
   skipped += 1;
   continue;
  }

  vn_lock(ZTOV(xzp), LK_EXCLUSIVE | LK_RETRY);
  ASSERT((ZTOV(xzp)->v_type == VREG) ||
      (ZTOV(xzp)->v_type == VLNK));

  tx = dmu_tx_create(zfsvfs->z_os);
  dmu_tx_hold_sa(tx, dzp->z_sa_hdl, B_FALSE);
  dmu_tx_hold_zap(tx, dzp->z_id, FALSE, zap.za_name);
  dmu_tx_hold_sa(tx, xzp->z_sa_hdl, B_FALSE);
  dmu_tx_hold_zap(tx, zfsvfs->z_unlinkedobj, FALSE, ((void*)0));

  zfs_sa_upgrade_txholds(tx, xzp);
  dmu_tx_mark_netfree(tx);
  error = dmu_tx_assign(tx, TXG_WAIT);
  if (error) {
   dmu_tx_abort(tx);
   vput(ZTOV(xzp));
   skipped += 1;
   continue;
  }

  error = zfs_link_destroy(dzp, zap.za_name, xzp, tx, 0, ((void*)0));
  if (error)
   skipped += 1;
  dmu_tx_commit(tx);

  vput(ZTOV(xzp));
 }
 zap_cursor_fini(&zc);
 if (error != ENOENT)
  skipped += 1;
 return (skipped);
}

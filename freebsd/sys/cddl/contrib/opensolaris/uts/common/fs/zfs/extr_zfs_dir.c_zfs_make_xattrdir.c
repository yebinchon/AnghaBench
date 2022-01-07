
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ z_id; int z_sa_hdl; TYPE_3__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_24__ {int z_log; scalar_t__ z_fuid_dirty; int z_os; } ;
typedef TYPE_3__ zfsvfs_t ;
struct TYPE_25__ {int z_fuidp; TYPE_1__* z_aclp; } ;
typedef TYPE_4__ zfs_acl_ids_t ;
typedef int vnode_t ;
typedef int vattr_t ;
typedef scalar_t__ uint64_t ;
typedef int parent ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_22__ {scalar_t__ z_acl_bytes; } ;


 int ACE_WRITE_NAMED_ATTRS ;
 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int DMU_NEW_OBJECT ;
 int EDQUOT ;
 int FALSE ;
 int IS_XATTR ;
 int SA_ZPL_PARENT (TYPE_3__*) ;
 int SA_ZPL_XATTR (TYPE_3__*) ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 int TX_MKXATTR ;
 int VERIFY (int) ;
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ;
 int * ZTOV (TYPE_2__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_sa_create (int *,scalar_t__) ;
 int dmu_tx_hold_zap (int *,int ,int ,int *) ;
 int getnewvnode_drop_reserve () ;
 int getnewvnode_reserve (int) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 scalar_t__ sa_update (int ,int ,scalar_t__*,int,int *) ;
 int zfs_acl_ids_create (TYPE_2__*,int ,int *,int *,int *,TYPE_4__*) ;
 int zfs_acl_ids_free (TYPE_4__*) ;
 scalar_t__ zfs_acl_ids_overquota (TYPE_3__*,TYPE_4__*) ;
 int zfs_fuid_sync (TYPE_3__*,int *) ;
 int zfs_fuid_txhold (TYPE_3__*,int *) ;
 int zfs_log_create (int ,int *,int ,TYPE_2__*,TYPE_2__*,char*,int *,int ,int *) ;
 int zfs_mknode (TYPE_2__*,int *,int *,int *,int ,TYPE_2__**,TYPE_4__*) ;
 int zfs_zaccess (TYPE_2__*,int ,int ,int ,int *) ;

int
zfs_make_xattrdir(znode_t *zp, vattr_t *vap, vnode_t **xvpp, cred_t *cr)
{
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 znode_t *xzp;
 dmu_tx_t *tx;
 int error;
 zfs_acl_ids_t acl_ids;
 boolean_t fuid_dirtied;
 uint64_t parent;

 *xvpp = ((void*)0);






 if (error = zfs_zaccess(zp, ACE_WRITE_NAMED_ATTRS, 0, B_FALSE, cr))
  return (error);


 if ((error = zfs_acl_ids_create(zp, IS_XATTR, vap, cr, ((void*)0),
     &acl_ids)) != 0)
  return (error);
 if (zfs_acl_ids_overquota(zfsvfs, &acl_ids)) {
  zfs_acl_ids_free(&acl_ids);
  return (SET_ERROR(EDQUOT));
 }

 getnewvnode_reserve(1);

 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_sa_create(tx, acl_ids.z_aclp->z_acl_bytes +
     ZFS_SA_BASE_ATTR_SIZE);
 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_TRUE);
 dmu_tx_hold_zap(tx, DMU_NEW_OBJECT, FALSE, ((void*)0));
 fuid_dirtied = zfsvfs->z_fuid_dirty;
 if (fuid_dirtied)
  zfs_fuid_txhold(zfsvfs, tx);
 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  zfs_acl_ids_free(&acl_ids);
  dmu_tx_abort(tx);
  return (error);
 }
 zfs_mknode(zp, vap, tx, cr, IS_XATTR, &xzp, &acl_ids);

 if (fuid_dirtied)
  zfs_fuid_sync(zfsvfs, tx);







 VERIFY(0 == sa_update(zp->z_sa_hdl, SA_ZPL_XATTR(zfsvfs), &xzp->z_id,
     sizeof (xzp->z_id), tx));

 (void) zfs_log_create(zfsvfs->z_log, tx, TX_MKXATTR, zp,
     xzp, "", ((void*)0), acl_ids.z_fuidp, vap);

 zfs_acl_ids_free(&acl_ids);
 dmu_tx_commit(tx);

 getnewvnode_drop_reserve();

 *xvpp = ZTOV(xzp);

 return (0);
}

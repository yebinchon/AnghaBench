
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_27__ ;
typedef struct TYPE_35__ TYPE_1__ ;


struct TYPE_37__ {char z_size; int z_sa_hdl; scalar_t__ z_is_sa; int z_id; TYPE_3__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
typedef int zilog_t ;
struct TYPE_38__ {TYPE_27__* z_os; int z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int * z_log; } ;
typedef TYPE_3__ zfsvfs_t ;
struct TYPE_39__ {TYPE_1__* z_aclp; } ;
typedef TYPE_4__ zfs_acl_ids_t ;
typedef int vnode_t ;
struct TYPE_40__ {scalar_t__ va_type; } ;
typedef TYPE_5__ vattr_t ;
typedef scalar_t__ uint64_t ;
typedef int kthread_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_36__ {scalar_t__ os_sync; } ;
struct TYPE_35__ {scalar_t__ z_acl_bytes; } ;


 int ACE_ADD_FILE ;
 int ASSERT (int) ;
 int B_FALSE ;
 int DMU_NEW_OBJECT ;
 int EDQUOT ;
 int EILSEQ ;
 int ENAMETOOLONG ;
 scalar_t__ MAX (int,scalar_t__) ;
 scalar_t__ MAXPATHLEN ;
 int SA_ZPL_SIZE (TYPE_3__*) ;
 int SA_ZPL_SYMLINK (TYPE_3__*) ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int TXG_WAIT ;
 scalar_t__ TX_SYMLINK ;
 int U8_VALIDATE_ENTIRE ;
 scalar_t__ VLNK ;
 TYPE_2__* VTOZ (int *) ;
 scalar_t__ ZFS_ACE_SPACE ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int ZNEW ;
 int * ZTOV (TYPE_2__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_27__*) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_sa_create (int *,scalar_t__) ;
 int dmu_tx_hold_write (int *,int ,int ,scalar_t__) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int getnewvnode_drop_reserve () ;
 int getnewvnode_reserve (int) ;
 int sa_update (int ,int ,char*,int,int *) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ u8_validate (char*,scalar_t__,int *,int ,int*) ;
 int zfs_acl_ids_create (TYPE_2__*,int ,TYPE_5__*,int *,int *,TYPE_4__*) ;
 int zfs_acl_ids_free (TYPE_4__*) ;
 scalar_t__ zfs_acl_ids_overquota (TYPE_3__*,TYPE_4__*) ;
 int zfs_dirent_lookup (TYPE_2__*,char*,TYPE_2__**,int ) ;
 int zfs_fuid_sync (TYPE_3__*,int *) ;
 int zfs_fuid_txhold (TYPE_3__*,int *) ;
 int zfs_link_create (TYPE_2__*,char*,TYPE_2__*,int *,int ) ;
 int zfs_log_symlink (int *,int *,scalar_t__,TYPE_2__*,TYPE_2__*,char*,char*) ;
 int zfs_mknode (TYPE_2__*,TYPE_5__*,int *,int *,int ,TYPE_2__**,TYPE_4__*) ;
 int zfs_sa_symlink (TYPE_2__*,char*,scalar_t__,int *) ;
 int zfs_zaccess (TYPE_2__*,int ,int ,int ,int *) ;
 int zil_commit (int *,int ) ;

__attribute__((used)) static int
zfs_symlink(vnode_t *dvp, vnode_t **vpp, char *name, vattr_t *vap, char *link,
    cred_t *cr, kthread_t *td)
{
 znode_t *zp, *dzp = VTOZ(dvp);
 dmu_tx_t *tx;
 zfsvfs_t *zfsvfs = dzp->z_zfsvfs;
 zilog_t *zilog;
 uint64_t len = strlen(link);
 int error;
 zfs_acl_ids_t acl_ids;
 boolean_t fuid_dirtied;
 uint64_t txtype = TX_SYMLINK;
 int flags = 0;

 ASSERT(vap->va_type == VLNK);

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 zilog = zfsvfs->z_log;

 if (zfsvfs->z_utf8 && u8_validate(name, strlen(name),
     ((void*)0), U8_VALIDATE_ENTIRE, &error) < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EILSEQ));
 }

 if (len > MAXPATHLEN) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENAMETOOLONG));
 }

 if ((error = zfs_acl_ids_create(dzp, 0,
     vap, cr, ((void*)0), &acl_ids)) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }




 error = zfs_dirent_lookup(dzp, name, &zp, ZNEW);
 if (error) {
  zfs_acl_ids_free(&acl_ids);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (error = zfs_zaccess(dzp, ACE_ADD_FILE, 0, B_FALSE, cr)) {
  zfs_acl_ids_free(&acl_ids);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (zfs_acl_ids_overquota(zfsvfs, &acl_ids)) {
  zfs_acl_ids_free(&acl_ids);
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EDQUOT));
 }

 getnewvnode_reserve(1);
 tx = dmu_tx_create(zfsvfs->z_os);
 fuid_dirtied = zfsvfs->z_fuid_dirty;
 dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0, MAX(1, len));
 dmu_tx_hold_zap(tx, dzp->z_id, TRUE, name);
 dmu_tx_hold_sa_create(tx, acl_ids.z_aclp->z_acl_bytes +
     ZFS_SA_BASE_ATTR_SIZE + len);
 dmu_tx_hold_sa(tx, dzp->z_sa_hdl, B_FALSE);
 if (!zfsvfs->z_use_sa && acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
  dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0,
      acl_ids.z_aclp->z_acl_bytes);
 }
 if (fuid_dirtied)
  zfs_fuid_txhold(zfsvfs, tx);
 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  zfs_acl_ids_free(&acl_ids);
  dmu_tx_abort(tx);
  getnewvnode_drop_reserve();
  ZFS_EXIT(zfsvfs);
  return (error);
 }





 zfs_mknode(dzp, vap, tx, cr, 0, &zp, &acl_ids);

 if (fuid_dirtied)
  zfs_fuid_sync(zfsvfs, tx);

 if (zp->z_is_sa)
  error = sa_update(zp->z_sa_hdl, SA_ZPL_SYMLINK(zfsvfs),
      link, len, tx);
 else
  zfs_sa_symlink(zp, link, len, tx);

 zp->z_size = len;
 (void) sa_update(zp->z_sa_hdl, SA_ZPL_SIZE(zfsvfs),
     &zp->z_size, sizeof (zp->z_size), tx);



 (void) zfs_link_create(dzp, name, zp, tx, ZNEW);

 zfs_log_symlink(zilog, tx, txtype, dzp, zp, name, link);
 *vpp = ZTOV(zp);

 zfs_acl_ids_free(&acl_ids);

 dmu_tx_commit(tx);

 getnewvnode_drop_reserve();

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;


struct TYPE_28__ {scalar_t__ z_issnap; int z_teardown_lock; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_29__ {scalar_t__ v_type; int v_count; int v_flag; int v_vfsp; int v_lock; } ;
typedef TYPE_2__ vnode_t ;
struct TYPE_30__ {int vfs_flag; TYPE_1__* vfs_data; int mnt_optnew; TYPE_2__* mnt_vnodecovered; } ;
typedef TYPE_3__ vfs_t ;
struct TYPE_31__ {int va_uid; int va_mask; } ;
typedef TYPE_4__ vattr_t ;
struct TYPE_32__ {int * td_ucred; } ;
typedef TYPE_5__ kthread_t ;
typedef int cred_t ;
struct TYPE_27__ {char* pn_path; } ;
struct TYPE_26__ {int flags; scalar_t__ datalen; int spec; } ;


 int AT_UID ;
 int DROP_GIANT () ;
 int EBUSY ;
 scalar_t__ ECANCELED ;
 int EINVAL ;
 int ENOTDIR ;
 int EPERM ;
 int FTAG ;
 int INGLOBALZONE (TYPE_5__*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MAXNAMELEN ;
 int MNT_NFS4ACLS ;
 int MNT_ROOTFS ;
 int MNT_UPDATE ;
 int MS_DATA ;
 int MS_OVERLAY ;
 int MS_REMOUNT ;
 int PICKUP_GIANT () ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 scalar_t__ VDIR ;
 int VFS_HOLD (int ) ;
 scalar_t__ VOP_ACCESS (TYPE_2__*,int ,int *,TYPE_5__*) ;
 scalar_t__ VOP_GETATTR (TYPE_2__*,TYPE_4__*,int *) ;
 int VOP_UNLOCK (TYPE_2__*,int ) ;
 int VROOT ;
 int VWRITE ;
 int ZFS_DELEG_PERM_MOUNT ;
 TYPE_5__* curthread ;
 scalar_t__ dsl_deleg_access (char*,int ,int *) ;
 int fromspace ;
 int getpoolname (char*,char*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int pn_get (int ,int ,TYPE_13__*) ;
 int rrm_enter (int *,int ,int ) ;
 int rrm_exit (int *,int ) ;
 int secpolicy_fs_mount (int *,TYPE_2__*,TYPE_3__*) ;
 int secpolicy_fs_mount_clearopts (int *,TYPE_3__*) ;
 scalar_t__ secpolicy_vnode_owner (TYPE_2__*,int *,int ) ;
 int spa_import_rootpool (char*) ;
 TYPE_13__ spn ;
 TYPE_12__* uap ;
 scalar_t__ vfs_getopt (int ,char*,void**,int *) ;
 int vn_lock (TYPE_2__*,int) ;
 int zfs_domount (TYPE_3__*,char*) ;
 int zfs_mount_label_policy (TYPE_3__*,char*) ;
 int zfs_register_callbacks (TYPE_3__*) ;
 scalar_t__ zfs_super_owner ;
 int zfs_unregister_callbacks (TYPE_1__*) ;
 int zone_dataset_visible (char*,int*) ;

__attribute__((used)) static int
zfs_mount(vfs_t *vfsp)
{
 kthread_t *td = curthread;
 vnode_t *mvp = vfsp->mnt_vnodecovered;
 cred_t *cr = td->td_ucred;
 char *osname;
 int error = 0;
 int canwrite;
 if (vfs_getopt(vfsp->mnt_optnew, "from", (void **)&osname, ((void*)0)))
  return (SET_ERROR(EINVAL));





 if (zfs_super_owner &&
     dsl_deleg_access(osname, ZFS_DELEG_PERM_MOUNT, cr) != ECANCELED) {
  secpolicy_fs_mount_clearopts(cr, vfsp);
 }
 error = secpolicy_fs_mount(cr, mvp, vfsp);
 if (error) {
  if (dsl_deleg_access(osname, ZFS_DELEG_PERM_MOUNT, cr) != 0)
   goto out;

  if (!(vfsp->vfs_flag & MS_REMOUNT)) {
   vattr_t vattr;






   vattr.va_mask = AT_UID;

   vn_lock(mvp, LK_SHARED | LK_RETRY);
   if (VOP_GETATTR(mvp, &vattr, cr)) {
    VOP_UNLOCK(mvp, 0);
    goto out;
   }

   if (secpolicy_vnode_owner(mvp, cr, vattr.va_uid) != 0 &&
       VOP_ACCESS(mvp, VWRITE, cr, td) != 0) {
    VOP_UNLOCK(mvp, 0);
    goto out;
   }
   VOP_UNLOCK(mvp, 0);
  }

  secpolicy_fs_mount_clearopts(cr, vfsp);
 }





 if (!INGLOBALZONE(curthread) &&
     (!zone_dataset_visible(osname, &canwrite) || !canwrite)) {
  error = SET_ERROR(EPERM);
  goto out;
 }







 vfsp->vfs_flag |= MNT_NFS4ACLS;





 if (vfsp->vfs_flag & MS_REMOUNT) {
  zfsvfs_t *zfsvfs = vfsp->vfs_data;
  rrm_enter(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);
  zfs_unregister_callbacks(zfsvfs);
  error = zfs_register_callbacks(vfsp);
  rrm_exit(&zfsvfs->z_teardown_lock, FTAG);
  goto out;
 }


 if ((vfsp->vfs_flag & MNT_ROOTFS) != 0 &&
     (vfsp->vfs_flag & MNT_UPDATE) == 0) {
  char pname[MAXNAMELEN];

  error = getpoolname(osname, pname);
  if (error == 0)
   error = spa_import_rootpool(pname);
  if (error)
   goto out;
 }
 DROP_GIANT();
 error = zfs_domount(vfsp, osname);
 PICKUP_GIANT();
out:
 return (error);
}

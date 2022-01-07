
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {TYPE_2__* z_ctldir; TYPE_5__* z_os; int z_unlinked_drain_task; int z_teardown_lock; int z_unmounted; TYPE_1__* z_parent; } ;
typedef TYPE_3__ zfsvfs_t ;
struct TYPE_23__ {int vfs_count; int vfs_resource; TYPE_3__* vfs_data; } ;
typedef TYPE_4__ vfs_t ;
struct TYPE_24__ {int os_user_ptr_lock; } ;
typedef TYPE_5__ objset_t ;
struct TYPE_25__ {int * td_ucred; } ;
typedef TYPE_6__ kthread_t ;
typedef int cred_t ;
struct TYPE_26__ {int tq_queue; } ;
struct TYPE_21__ {int v_count; } ;
struct TYPE_20__ {int z_vfs; } ;


 int B_TRUE ;
 int EBUSY ;
 int FORCECLOSE ;
 int FTAG ;
 int MS_FORCE ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int VERIFY (int) ;
 int ZFS_DELEG_PERM_MOUNT ;
 TYPE_6__* curthread ;
 int dmu_objset_disown (TYPE_5__*,TYPE_3__*) ;
 int dmu_objset_set_user (TYPE_5__*,int *) ;
 int dnlc_purge_vfsp (int ,int ) ;
 scalar_t__ dsl_deleg_access (char*,int ,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ refstr_value (int ) ;
 int rrm_enter (int *,int ,int ) ;
 int rrm_exit (int *,int ) ;
 int secpolicy_fs_unmount (int *,TYPE_4__*) ;
 scalar_t__ taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_drain (int ,int *) ;
 int vflush (TYPE_4__*,int ,int ,TYPE_6__*) ;
 int zfs_freevfs (TYPE_4__*) ;
 int zfsctl_destroy (TYPE_3__*) ;
 int zfsctl_umount_snapshots (TYPE_4__*,int,int *) ;
 TYPE_8__* zfsvfs_taskq ;
 scalar_t__ zfsvfs_teardown (TYPE_3__*,int ) ;

__attribute__((used)) static int
zfs_umount(vfs_t *vfsp, int fflag)
{
 kthread_t *td = curthread;
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 objset_t *os;
 cred_t *cr = td->td_ucred;
 int ret;

 ret = secpolicy_fs_unmount(cr, vfsp);
 if (ret) {
  if (dsl_deleg_access((char *)refstr_value(vfsp->vfs_resource),
      ZFS_DELEG_PERM_MOUNT, cr))
   return (ret);
 }







 (void) dnlc_purge_vfsp(zfsvfs->z_parent->z_vfs, 0);





 if (zfsvfs->z_ctldir != ((void*)0)) {
  if ((ret = zfsctl_umount_snapshots(vfsp, fflag, cr)) != 0)
   return (ret);
 }

 if (fflag & MS_FORCE) {





  rrm_enter(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);
  zfsvfs->z_unmounted = B_TRUE;
  rrm_exit(&zfsvfs->z_teardown_lock, FTAG);
 }




 ret = vflush(vfsp, 0, (fflag & MS_FORCE) ? FORCECLOSE : 0, td);
 if (ret != 0)
  return (ret);
 while (taskqueue_cancel(zfsvfs_taskq->tq_queue,
     &zfsvfs->z_unlinked_drain_task, ((void*)0)) != 0)
  taskqueue_drain(zfsvfs_taskq->tq_queue,
      &zfsvfs->z_unlinked_drain_task);

 VERIFY(zfsvfs_teardown(zfsvfs, B_TRUE) == 0);
 os = zfsvfs->z_os;





 if (os != ((void*)0)) {



  mutex_enter(&os->os_user_ptr_lock);
  dmu_objset_set_user(os, ((void*)0));
  mutex_exit(&os->os_user_ptr_lock);




  dmu_objset_disown(os, zfsvfs);
 }




 if (zfsvfs->z_ctldir != ((void*)0))
  zfsctl_destroy(zfsvfs);
 zfs_freevfs(vfsp);

 return (0);
}

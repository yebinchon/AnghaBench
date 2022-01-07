
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct mount {int mnt_flag; } ;
struct linux_syncfs_args {int fd; } ;


 int MBF_MNTLSTLOCK ;
 int MNT_NOWAIT ;
 int MNT_RDONLY ;
 int TDP_SYNCIO ;
 int VFS_SYNC (struct mount*,int ) ;
 int V_NOWAIT ;
 int cap_fsync_rights ;
 int curthread_pflags_restore (int) ;
 int curthread_pflags_set (int ) ;
 int fgetvp (struct thread*,int ,int *,struct vnode**) ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_msync (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_finished_write (struct mount*) ;
 scalar_t__ vn_start_write (int *,struct mount**,int ) ;
 int vrele (struct vnode*) ;

int
linux_syncfs(struct thread *td, struct linux_syncfs_args *args)
{
 struct mount *mp;
 struct vnode *vp;
 int error, save;

 error = fgetvp(td, args->fd, &cap_fsync_rights, &vp);
 if (error != 0)





  return (error);

 mp = vp->v_mount;
 mtx_lock(&mountlist_mtx);
 error = vfs_busy(mp, MBF_MNTLSTLOCK);
 if (error != 0) {

  mtx_unlock(&mountlist_mtx);
  goto out;
 }
 if ((mp->mnt_flag & MNT_RDONLY) == 0 &&
     vn_start_write(((void*)0), &mp, V_NOWAIT) == 0) {
  save = curthread_pflags_set(TDP_SYNCIO);
  vfs_msync(mp, MNT_NOWAIT);
  VFS_SYNC(mp, MNT_NOWAIT);
  curthread_pflags_restore(save);
  vn_finished_write(mp);
 }
 vfs_unbusy(mp);

 out:
 vrele(vp);
 return (error);
}

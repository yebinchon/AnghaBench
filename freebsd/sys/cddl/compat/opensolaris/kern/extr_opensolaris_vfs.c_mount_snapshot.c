
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ v_type; int v_iflag; struct mount* v_mountedhere; TYPE_1__* v_mount; } ;
typedef TYPE_2__ vnode_t ;
struct vfsconf {int dummy; } ;
struct ucred {int dummy; } ;
struct mount {int mnt_flag; int * mnt_optnew; int mnt_stat; int * mnt_opt; int * mnt_vnodecovered; } ;
struct TYPE_18__ {struct ucred* td_ucred; } ;
typedef TYPE_3__ kthread_t ;
struct TYPE_16__ {int mnt_cred; } ;


 int ASSERT_VOP_ELOCKED (TYPE_2__*,char*) ;
 int EBUSY ;
 int ENAMETOOLONG ;
 int ENODEV ;
 int ENOTDIR ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 scalar_t__ MFSNAMELEN ;
 scalar_t__ MNAMELEN ;
 int MNT_IGNORE ;
 int MNT_NOSUID ;
 int MNT_RDONLY ;
 int MNT_UPDATEMASK ;
 int TAILQ_INSERT_TAIL (int *,struct mount*,int ) ;
 scalar_t__ VDIR ;
 int VFS_MOUNT (struct mount*) ;
 scalar_t__ VFS_ROOT (struct mount*,int,TYPE_2__**) ;
 int VFS_STATFS (struct mount*,int *) ;
 int VI_LOCK (TYPE_2__*) ;
 int VI_MOUNT ;
 int VI_UNLOCK (TYPE_2__*) ;
 int VOP_UNLOCK (TYPE_2__*,int ) ;
 int VQ_MOUNT ;
 int cache_purge (TYPE_2__*) ;
 struct ucred* kcred ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 scalar_t__ strlen (char const*) ;
 struct vfsconf* vfs_byname_kld (char const*,TYPE_3__*,int*) ;
 int vfs_event_signal (int *,int ,int ) ;
 int vfs_freeopts (int *) ;
 struct mount* vfs_mount_alloc (TYPE_2__*,struct vfsconf*,char*,int ) ;
 int vfs_mount_destroy (struct mount*) ;
 int vfs_op_exit (struct mount*) ;
 int vfs_setmntopt (struct mount*,char*,char*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_lock (TYPE_2__*,int) ;
 int vput (TYPE_2__*) ;

int
mount_snapshot(kthread_t *td, vnode_t **vpp, const char *fstype, char *fspath,
    char *fspec, int fsflags)
{
 struct vfsconf *vfsp;
 struct mount *mp;
 vnode_t *vp, *mvp;
 struct ucred *cr;
 int error;

 ASSERT_VOP_ELOCKED(*vpp, "mount_snapshot");

 vp = *vpp;
 *vpp = ((void*)0);
 error = 0;






 if (strlen(fstype) >= MFSNAMELEN || strlen(fspath) >= MNAMELEN)
  error = ENAMETOOLONG;
 if (error == 0 && (vfsp = vfs_byname_kld(fstype, td, &error)) == ((void*)0))
  error = ENODEV;
 if (error == 0 && vp->v_type != VDIR)
  error = ENOTDIR;




 if (error == 0) {
  VI_LOCK(vp);
  if ((vp->v_iflag & VI_MOUNT) == 0 && vp->v_mountedhere == ((void*)0))
   vp->v_iflag |= VI_MOUNT;
  else
   error = EBUSY;
  VI_UNLOCK(vp);
 }
 if (error != 0) {
  vput(vp);
  return (error);
 }
 VOP_UNLOCK(vp, 0);






 mp = vfs_mount_alloc(vp, vfsp, fspath, vp->v_mount->mnt_cred);

 mp->mnt_optnew = ((void*)0);
 vfs_setmntopt(mp, "from", fspec, 0);
 mp->mnt_optnew = mp->mnt_opt;
 mp->mnt_opt = ((void*)0);




 mp->mnt_flag = fsflags & MNT_UPDATEMASK;



 mp->mnt_flag |= MNT_RDONLY;




 mp->mnt_flag |= MNT_NOSUID;




 mp->mnt_flag |= MNT_IGNORE;




 cr = td->td_ucred;
 td->td_ucred = kcred;
 error = VFS_MOUNT(mp);
 td->td_ucred = cr;

 if (error != 0) {






  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  VI_LOCK(vp);
  vp->v_iflag &= ~VI_MOUNT;
  VI_UNLOCK(vp);
  vput(vp);
  vfs_unbusy(mp);
  vfs_freeopts(mp->mnt_optnew);
  mp->mnt_vnodecovered = ((void*)0);
  vfs_mount_destroy(mp);
  return (error);
 }

 if (mp->mnt_opt != ((void*)0))
  vfs_freeopts(mp->mnt_opt);
 mp->mnt_opt = mp->mnt_optnew;
 (void)VFS_STATFS(mp, &mp->mnt_stat);





 mp->mnt_optnew = ((void*)0);

 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);



 VI_LOCK(vp);
 vp->v_iflag &= ~VI_MOUNT;
 VI_UNLOCK(vp);

 vp->v_mountedhere = mp;

 mtx_lock(&mountlist_mtx);
 TAILQ_INSERT_TAIL(&mountlist, mp, mnt_list);
 mtx_unlock(&mountlist_mtx);
 vfs_event_signal(((void*)0), VQ_MOUNT, 0);
 if (VFS_ROOT(mp, LK_EXCLUSIVE, &mvp))
  panic("mount: lost mount");
 VOP_UNLOCK(vp, 0);
 vfs_op_exit(mp);
 vfs_unbusy(mp);
 *vpp = mvp;
 return (0);
}

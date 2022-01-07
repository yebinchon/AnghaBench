
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int z_os; int * z_ctldir; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_10__ {struct mount* v_mountedhere; } ;
typedef TYPE_2__ vnode_t ;
struct TYPE_11__ {TYPE_1__* vfs_data; } ;
typedef TYPE_3__ vfs_t ;
typedef scalar_t__ uint64_t ;
struct mount {int dummy; } ;
typedef int snapname ;
typedef int sfs_node_t ;
typedef int cred_t ;


 int ASSERT (int ) ;
 int ENOENT ;
 int FTAG ;
 int KASSERT_IMPLY (int,int,char*) ;
 int LK_EXCLUSIVE ;
 int MS_FORCE ;
 int ZFSCTL_INO_SNAPDIR ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int curthread ;
 int dmu_objset_pool (int ) ;
 int dmu_snapshot_list_next (int ,int,char*,scalar_t__*,scalar_t__*,int *) ;
 int dounmount (struct mount*,int,int ) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 int sfs_vnode_get (TYPE_3__*,int ,int ,scalar_t__,TYPE_2__**) ;
 int vfs_ref (struct mount*) ;
 int vput (TYPE_2__*) ;
 int vrefcnt (TYPE_2__*) ;

int
zfsctl_umount_snapshots(vfs_t *vfsp, int fflags, cred_t *cr)
{
 char snapname[ZFS_MAX_DATASET_NAME_LEN];
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 struct mount *mp;
 vnode_t *dvp;
 vnode_t *vp;
 sfs_node_t *node;
 sfs_node_t *snap;
 uint64_t cookie;
 int error;

 ASSERT(zfsvfs->z_ctldir != ((void*)0));

 cookie = 0;
 for (;;) {
  uint64_t id;

  dsl_pool_config_enter(dmu_objset_pool(zfsvfs->z_os), FTAG);
  error = dmu_snapshot_list_next(zfsvfs->z_os, sizeof(snapname),
      snapname, &id, &cookie, ((void*)0));
  dsl_pool_config_exit(dmu_objset_pool(zfsvfs->z_os), FTAG);
  if (error != 0) {
   if (error == ENOENT)
    error = 0;
   break;
  }

  for (;;) {
   error = sfs_vnode_get(vfsp, LK_EXCLUSIVE,
       ZFSCTL_INO_SNAPDIR, id, &vp);
   if (error != 0 || vp == ((void*)0))
    break;

   mp = vp->v_mountedhere;







   if (mp != ((void*)0))
    break;
   vput(vp);
  }
  if (error != 0)
   break;
  if (vp == ((void*)0))
   continue;






  vfs_ref(mp);
  error = dounmount(mp, fflags, curthread);
  KASSERT_IMPLY(error == 0, vrefcnt(vp) == 1,
      ("extra references after unmount"));
  vput(vp);
  if (error != 0)
   break;
 }
 KASSERT_IMPLY((fflags & MS_FORCE) != 0, error == 0,
     ("force unmounting failed"));
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * z_ctldir; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_12__ {TYPE_1__* v_mountedhere; } ;
typedef TYPE_3__ vnode_t ;
struct TYPE_13__ {TYPE_2__* vfs_data; } ;
typedef TYPE_4__ vfs_t ;
typedef int uint64_t ;
struct mount {int dummy; } ;
struct TYPE_10__ {TYPE_2__* mnt_data; } ;


 int ASSERT (int ) ;
 int EINVAL ;
 int LK_EXCLUSIVE ;
 int SET_ERROR (int ) ;
 int ZFSCTL_INO_SNAPDIR ;
 int sfs_vnode_get (TYPE_4__*,int ,int ,int ,TYPE_3__**) ;
 int vput (TYPE_3__*) ;

int
zfsctl_lookup_objset(vfs_t *vfsp, uint64_t objsetid, zfsvfs_t **zfsvfsp)
{
 struct mount *mp;
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 vnode_t *vp;
 int error;

 ASSERT(zfsvfs->z_ctldir != ((void*)0));
 *zfsvfsp = ((void*)0);
 error = sfs_vnode_get(vfsp, LK_EXCLUSIVE,
     ZFSCTL_INO_SNAPDIR, objsetid, &vp);
 if (error == 0 && vp != ((void*)0)) {



  if (vp->v_mountedhere != ((void*)0))
   *zfsvfsp = vp->v_mountedhere->mnt_data;
  vput(vp);
 }
 if (*zfsvfsp == ((void*)0))
  return (SET_ERROR(EINVAL));
 return (0);
}

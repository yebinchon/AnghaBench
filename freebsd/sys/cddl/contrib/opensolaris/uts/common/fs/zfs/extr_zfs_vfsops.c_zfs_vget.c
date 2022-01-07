
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ z_unlinked; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_shares_dir; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int vnode_t ;
struct TYPE_12__ {TYPE_2__* vfs_data; } ;
typedef TYPE_3__ vfs_t ;
typedef scalar_t__ ino_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ZFSCTL_INO_ROOT ;
 scalar_t__ ZFSCTL_INO_SNAPDIR ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int * ZTOV (TYPE_1__*) ;
 int vn_lock (int *,int) ;
 int vrele (int *) ;
 int zfs_zget (TYPE_2__*,scalar_t__,TYPE_1__**) ;

__attribute__((used)) static int
zfs_vget(vfs_t *vfsp, ino_t ino, int flags, vnode_t **vpp)
{
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 znode_t *zp;
 int err;






 if (ino == ZFSCTL_INO_ROOT || ino == ZFSCTL_INO_SNAPDIR ||
     (zfsvfs->z_shares_dir != 0 && ino == zfsvfs->z_shares_dir))
  return (EOPNOTSUPP);

 ZFS_ENTER(zfsvfs);
 err = zfs_zget(zfsvfs, ino, &zp);
 if (err == 0 && zp->z_unlinked) {
  vrele(ZTOV(zp));
  err = EINVAL;
 }
 if (err == 0)
  *vpp = ZTOV(zp);
 ZFS_EXIT(zfsvfs);
 if (err == 0) {
  err = vn_lock(*vpp, flags);
  if (err != 0)
   vrele(*vpp);
 }
 if (err != 0)
  *vpp = ((void*)0);
 return (err);
}

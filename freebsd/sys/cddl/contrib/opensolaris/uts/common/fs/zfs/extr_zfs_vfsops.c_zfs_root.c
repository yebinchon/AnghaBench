
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int znode_t ;
struct TYPE_7__ {int z_root; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int vnode_t ;
struct TYPE_8__ {TYPE_1__* vfs_data; } ;
typedef TYPE_2__ vfs_t ;


 int VN_RELE (int *) ;
 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 int * ZTOV (int *) ;
 int vn_lock (int *,int) ;
 int zfs_zget (TYPE_1__*,int ,int **) ;

__attribute__((used)) static int
zfs_root(vfs_t *vfsp, int flags, vnode_t **vpp)
{
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 znode_t *rootzp;
 int error;

 ZFS_ENTER(zfsvfs);

 error = zfs_zget(zfsvfs, zfsvfs->z_root, &rootzp);
 if (error == 0)
  *vpp = ZTOV(rootzp);

 ZFS_EXIT(zfsvfs);

 if (error == 0) {
  error = vn_lock(*vpp, flags);
  if (error != 0) {
   VN_RELE(*vpp);
   *vpp = ((void*)0);
  }
 }
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int vnode_t ;


 int zfsctl_root_vnode (int ,int *,int,int **) ;

int
zfsctl_root(zfsvfs_t *zfsvfs, int flags, vnode_t **vpp)
{
 vnode_t *vp;
 int error;

 error = zfsctl_root_vnode(zfsvfs->z_vfs, ((void*)0), flags, vpp);
 return (error);
}

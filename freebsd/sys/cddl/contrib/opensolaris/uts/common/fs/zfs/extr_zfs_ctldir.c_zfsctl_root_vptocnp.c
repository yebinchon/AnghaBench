
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct vop_vptocnp_args {int* a_buflen; int a_buf; int ** a_vpp; int a_vp; } ;
typedef int dotzfs_name ;


 int ENOMEM ;
 int LK_SHARED ;
 int SET_ERROR (int) ;
 int VOP_UNLOCK (int *,int ) ;
 int bcopy (char const*,int,int) ;
 int vn_vget_ino_gen (int ,int ,int *,int ,int **) ;
 int zfsctl_fs_root_vnode ;

__attribute__((used)) static int
zfsctl_root_vptocnp(struct vop_vptocnp_args *ap)
{
 static const char dotzfs_name[4] = ".zfs";
 vnode_t *dvp;
 int error;

 if (*ap->a_buflen < sizeof (dotzfs_name))
  return (SET_ERROR(ENOMEM));

 error = vn_vget_ino_gen(ap->a_vp, zfsctl_fs_root_vnode, ((void*)0),
     LK_SHARED, &dvp);
 if (error != 0)
  return (SET_ERROR(error));

 VOP_UNLOCK(dvp, 0);
 *ap->a_vpp = dvp;
 *ap->a_buflen -= sizeof (dotzfs_name);
 bcopy(dotzfs_name, ap->a_buf + *ap->a_buflen, sizeof (dotzfs_name));
 return (0);
}

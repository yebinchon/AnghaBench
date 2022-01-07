
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfsvfs_t ;
typedef int vnode_t ;
struct vop_deleteextattr_args {int a_cred; int a_vp; int a_name; int a_attrnamespace; struct thread* a_td; } ;
struct vattr {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {int * ni_dvp; int ni_cnd; int * ni_vp; } ;
typedef int attrname ;
struct TYPE_2__ {int * z_zfsvfs; } ;


 int DELETE ;
 int ENOATTR ;
 int ENOENT ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int LOOKUP_XATTR ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATVP (struct nameidata*,int ,int,int ,char*,int *,struct thread*) ;
 int NOFOLLOW ;
 int UIO_SYSSPACE ;
 int VOP_REMOVE (int *,int *,int *) ;
 TYPE_1__* VTOZ (int ) ;
 int VWRITE ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int extattr_check_cred (int ,int ,int ,struct thread*,int ) ;
 int namei (struct nameidata*) ;
 int vput (int *) ;
 int vrele (int *) ;
 int zfs_create_attrname (int ,int ,char*,int) ;
 int zfs_lookup (int ,int *,int **,int *,int ,int ,struct thread*,int ) ;

int
zfs_deleteextattr(struct vop_deleteextattr_args *ap)
{
 zfsvfs_t *zfsvfs = VTOZ(ap->a_vp)->z_zfsvfs;
 struct thread *td = ap->a_td;
 struct nameidata nd;
 char attrname[255];
 struct vattr va;
 vnode_t *xvp = ((void*)0), *vp;
 int error, flags;

 error = extattr_check_cred(ap->a_vp, ap->a_attrnamespace,
     ap->a_cred, ap->a_td, VWRITE);
 if (error != 0)
  return (error);

 error = zfs_create_attrname(ap->a_attrnamespace, ap->a_name, attrname,
     sizeof(attrname));
 if (error != 0)
  return (error);

 ZFS_ENTER(zfsvfs);

 error = zfs_lookup(ap->a_vp, ((void*)0), &xvp, ((void*)0), 0, ap->a_cred, td,
     LOOKUP_XATTR);
 if (error != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 NDINIT_ATVP(&nd, DELETE, NOFOLLOW | LOCKPARENT | LOCKLEAF,
     UIO_SYSSPACE, attrname, xvp, td);
 error = namei(&nd);
 vp = nd.ni_vp;
 if (error != 0) {
  ZFS_EXIT(zfsvfs);
  NDFREE(&nd, NDF_ONLY_PNBUF);
  if (error == ENOENT)
   error = ENOATTR;
  return (error);
 }

 error = VOP_REMOVE(nd.ni_dvp, vp, &nd.ni_cnd);
 NDFREE(&nd, NDF_ONLY_PNBUF);

 vput(nd.ni_dvp);
 if (vp == nd.ni_dvp)
  vrele(vp);
 else
  vput(vp);
 ZFS_EXIT(zfsvfs);

 return (error);
}

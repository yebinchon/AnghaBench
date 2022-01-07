
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfsvfs_t ;
typedef int vnode_t ;
struct vop_getextattr_args {size_t* a_size; int a_cred; int * a_uio; int a_vp; int a_name; int a_attrnamespace; struct thread* a_td; } ;
struct vattr {scalar_t__ va_size; } ;
struct thread {int dummy; } ;
struct nameidata {int * ni_vp; } ;
typedef int attrname ;
struct TYPE_2__ {int * z_zfsvfs; } ;


 int ENOATTR ;
 int ENOENT ;
 int FREAD ;
 int IO_UNIT ;
 int LOOKUP ;
 int LOOKUP_XATTR ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATVP (struct nameidata*,int ,int ,int ,char*,int *,struct thread*) ;
 int NOFOLLOW ;
 int UIO_SYSSPACE ;
 int VOP_GETATTR (int *,struct vattr*,int ) ;
 int VOP_READ (int *,int *,int ,int ) ;
 int VOP_UNLOCK (int *,int ) ;
 int VREAD ;
 TYPE_1__* VTOZ (int ) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int extattr_check_cred (int ,int ,int ,struct thread*,int ) ;
 int vn_close (int *,int,int ,struct thread*) ;
 int vn_open_cred (struct nameidata*,int*,int ,int ,int ,int *) ;
 int zfs_create_attrname (int ,int ,char*,int) ;
 int zfs_lookup (int ,int *,int **,int *,int ,int ,struct thread*,int ) ;

__attribute__((used)) static int
zfs_getextattr(struct vop_getextattr_args *ap)
{
 zfsvfs_t *zfsvfs = VTOZ(ap->a_vp)->z_zfsvfs;
 struct thread *td = ap->a_td;
 struct nameidata nd;
 char attrname[255];
 struct vattr va;
 vnode_t *xvp = ((void*)0), *vp;
 int error, flags;

 error = extattr_check_cred(ap->a_vp, ap->a_attrnamespace,
     ap->a_cred, ap->a_td, VREAD);
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

 flags = FREAD;
 NDINIT_ATVP(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, attrname,
     xvp, td);
 error = vn_open_cred(&nd, &flags, 0, 0, ap->a_cred, ((void*)0));
 vp = nd.ni_vp;
 NDFREE(&nd, NDF_ONLY_PNBUF);
 if (error != 0) {
  ZFS_EXIT(zfsvfs);
  if (error == ENOENT)
   error = ENOATTR;
  return (error);
 }

 if (ap->a_size != ((void*)0)) {
  error = VOP_GETATTR(vp, &va, ap->a_cred);
  if (error == 0)
   *ap->a_size = (size_t)va.va_size;
 } else if (ap->a_uio != ((void*)0))
  error = VOP_READ(vp, ap->a_uio, IO_UNIT, ap->a_cred);

 VOP_UNLOCK(vp, 0);
 vn_close(vp, flags, ap->a_cred, td);
 ZFS_EXIT(zfsvfs);

 return (error);
}

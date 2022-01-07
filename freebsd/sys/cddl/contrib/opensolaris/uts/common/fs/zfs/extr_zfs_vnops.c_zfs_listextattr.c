
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfsvfs_t ;
typedef int vnode_t ;
typedef int u_char ;
struct vop_listextattr_args {size_t* a_size; int a_cred; int a_vp; int a_attrnamespace; struct thread* a_td; struct uio* a_uio; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_rw; scalar_t__ uio_offset; struct thread* uio_td; int uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct nameidata {int * ni_vp; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct dirent {scalar_t__ d_type; int* d_name; int d_namlen; scalar_t__ d_reclen; } ;
typedef int dirbuf ;
typedef int attrprefix ;
struct TYPE_2__ {int * z_zfsvfs; } ;


 scalar_t__ DT_REG ;
 scalar_t__ DT_UNKNOWN ;
 int ENOATTR ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int LOOKUP_XATTR ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATVP (struct nameidata*,int ,int,int ,char*,int *,struct thread*) ;
 int NOFOLLOW ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_READDIR (int *,struct uio*,int ,int*,int *,int *) ;
 int VREAD ;
 TYPE_1__* VTOZ (int ) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int extattr_check_cred (int ,int ,int ,struct thread*,int ) ;
 int namei (struct nameidata*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (int*,char*,size_t) ;
 int uiomove (int*,int,int ,struct uio*) ;
 int vput (int *) ;
 int zfs_create_attrname (int ,char*,char*,int) ;
 int zfs_lookup (int ,int *,int **,int *,int ,int ,struct thread*,int ) ;

__attribute__((used)) static int
zfs_listextattr(struct vop_listextattr_args *ap)
{
 zfsvfs_t *zfsvfs = VTOZ(ap->a_vp)->z_zfsvfs;
 struct thread *td = ap->a_td;
 struct nameidata nd;
 char attrprefix[16];
 u_char dirbuf[sizeof(struct dirent)];
 struct dirent *dp;
 struct iovec aiov;
 struct uio auio, *uio = ap->a_uio;
 size_t *sizep = ap->a_size;
 size_t plen;
 vnode_t *xvp = ((void*)0), *vp;
 int done, error, eof, pos;

 error = extattr_check_cred(ap->a_vp, ap->a_attrnamespace,
     ap->a_cred, ap->a_td, VREAD);
 if (error != 0)
  return (error);

 error = zfs_create_attrname(ap->a_attrnamespace, "", attrprefix,
     sizeof(attrprefix));
 if (error != 0)
  return (error);
 plen = strlen(attrprefix);

 ZFS_ENTER(zfsvfs);

 if (sizep != ((void*)0))
  *sizep = 0;

 error = zfs_lookup(ap->a_vp, ((void*)0), &xvp, ((void*)0), 0, ap->a_cred, td,
     LOOKUP_XATTR);
 if (error != 0) {
  ZFS_EXIT(zfsvfs);




  if (error == ENOATTR)
   error = 0;
  return (error);
 }

 NDINIT_ATVP(&nd, LOOKUP, NOFOLLOW | LOCKLEAF | LOCKSHARED,
     UIO_SYSSPACE, ".", xvp, td);
 error = namei(&nd);
 vp = nd.ni_vp;
 NDFREE(&nd, NDF_ONLY_PNBUF);
 if (error != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_td = td;
 auio.uio_rw = UIO_READ;
 auio.uio_offset = 0;

 do {
  u_char nlen;

  aiov.iov_base = (void *)dirbuf;
  aiov.iov_len = sizeof(dirbuf);
  auio.uio_resid = sizeof(dirbuf);
  error = VOP_READDIR(vp, &auio, ap->a_cred, &eof, ((void*)0), ((void*)0));
  done = sizeof(dirbuf) - auio.uio_resid;
  if (error != 0)
   break;
  for (pos = 0; pos < done;) {
   dp = (struct dirent *)(dirbuf + pos);
   pos += dp->d_reclen;




   if (dp->d_type != DT_REG && dp->d_type != DT_UNKNOWN)
    continue;
   if (plen == 0 && strncmp(dp->d_name, "freebsd:", 8) == 0)
    continue;
   else if (strncmp(dp->d_name, attrprefix, plen) != 0)
    continue;
   nlen = dp->d_namlen - plen;
   if (sizep != ((void*)0))
    *sizep += 1 + nlen;
   else if (uio != ((void*)0)) {




    error = uiomove(&nlen, 1, uio->uio_rw, uio);
    if (error == 0) {
     error = uiomove(dp->d_name + plen, nlen,
         uio->uio_rw, uio);
    }
    if (error != 0)
     break;
   }
  }
 } while (!eof && error == 0);

 vput(vp);
 ZFS_EXIT(zfsvfs);

 return (error);
}

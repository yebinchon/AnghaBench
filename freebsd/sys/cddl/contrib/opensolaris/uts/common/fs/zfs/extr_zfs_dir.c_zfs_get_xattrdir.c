
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_14__ {TYPE_1__* z_vfs; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int vnode_t ;
struct TYPE_15__ {int va_mask; int va_mode; int va_gid; int va_uid; int va_type; } ;
typedef TYPE_4__ vattr_t ;
typedef int cred_t ;
struct TYPE_12__ {int vfs_flag; } ;


 int AT_GID ;
 int AT_MODE ;
 int AT_TYPE ;
 int AT_UID ;
 int CREATE_XATTR_DIR ;
 int ENOATTR ;
 int ENOENT ;
 int ERESTART ;
 int EROFS ;
 int SET_ERROR (int ) ;
 int S_IFDIR ;
 int S_ISVTX ;
 int VDIR ;
 int VFS_RDONLY ;
 int VOP_UNLOCK (int *,int ) ;
 int * ZTOV (TYPE_2__*) ;
 int ZXATTR ;
 int zfs_dirent_lookup (TYPE_2__*,char*,TYPE_2__**,int ) ;
 int zfs_fuid_map_ids (TYPE_2__*,int *,int *,int *) ;
 int zfs_make_xattrdir (TYPE_2__*,TYPE_4__*,int **,int *) ;

int
zfs_get_xattrdir(znode_t *zp, vnode_t **xvpp, cred_t *cr, int flags)
{
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 znode_t *xzp;
 vattr_t va;
 int error;
top:
 error = zfs_dirent_lookup(zp, "", &xzp, ZXATTR);
 if (error)
  return (error);

 if (xzp != ((void*)0)) {
  *xvpp = ZTOV(xzp);
  return (0);
 }


 if (!(flags & CREATE_XATTR_DIR)) {



  return (SET_ERROR(ENOATTR));

 }

 if (zfsvfs->z_vfs->vfs_flag & VFS_RDONLY) {
  return (SET_ERROR(EROFS));
 }
 va.va_mask = AT_TYPE | AT_MODE | AT_UID | AT_GID;
 va.va_type = VDIR;
 va.va_mode = S_IFDIR | S_ISVTX | 0777;
 zfs_fuid_map_ids(zp, cr, &va.va_uid, &va.va_gid);

 error = zfs_make_xattrdir(zp, &va, xvpp, cr);

 if (error == ERESTART) {

  goto top;
 }
 if (error == 0)
  VOP_UNLOCK(*xvpp, 0);

 return (error);
}

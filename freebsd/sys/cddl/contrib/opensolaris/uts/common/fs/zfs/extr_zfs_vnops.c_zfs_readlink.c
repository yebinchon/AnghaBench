
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z_sa_hdl; scalar_t__ z_is_sa; int * z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
typedef int vnode_t ;
typedef int uio_t ;
typedef int cred_t ;
typedef int caller_context_t ;


 int SA_ZPL_SYMLINK (int *) ;
 TYPE_1__* VTOZ (int *) ;
 int ZFS_ACCESSTIME_STAMP (int *,TYPE_1__*) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int sa_lookup_uio (int ,int ,int *) ;
 int zfs_sa_readlink (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_readlink(vnode_t *vp, uio_t *uio, cred_t *cr, caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if (zp->z_is_sa)
  error = sa_lookup_uio(zp->z_sa_hdl,
      SA_ZPL_SYMLINK(zfsvfs), uio);
 else
  error = zfs_sa_readlink(zp, uio);

 ZFS_ACCESSTIME_STAMP(zfsvfs, zp);

 ZFS_EXIT(zfsvfs);
 return (error);
}

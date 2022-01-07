
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
typedef int vnode_t ;
typedef int cred_t ;
typedef int caller_context_t ;


 int B_FALSE ;
 TYPE_1__* VTOZ (int *) ;
 int V_ACE_MASK ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int zfs_zaccess (TYPE_1__*,int,int,int ,int *) ;
 int zfs_zaccess_rwx (TYPE_1__*,int,int,int *) ;

__attribute__((used)) static int
zfs_access(vnode_t *vp, int mode, int flag, cred_t *cr,
    caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if (flag & V_ACE_MASK)
  error = zfs_zaccess(zp, mode, flag, B_FALSE, cr);
 else
  error = zfs_zaccess_rwx(zp, mode, flag, cr);

 ZFS_EXIT(zfsvfs);
 return (error);
}

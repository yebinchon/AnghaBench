
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
typedef int vsecattr_t ;
typedef int vnode_t ;
typedef int cred_t ;
typedef int caller_context_t ;
typedef int boolean_t ;


 int ATTR_NOACLCHECK ;
 int B_FALSE ;
 int B_TRUE ;
 TYPE_1__* VTOZ (int *) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int zfs_getacl (TYPE_1__*,int *,int ,int *) ;

__attribute__((used)) static int
zfs_getsecattr(vnode_t *vp, vsecattr_t *vsecp, int flag, cred_t *cr,
    caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 int error;
 boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);
 error = zfs_getacl(zp, vsecp, skipaclchk, cr);
 ZFS_EXIT(zfsvfs);

 return (error);
}

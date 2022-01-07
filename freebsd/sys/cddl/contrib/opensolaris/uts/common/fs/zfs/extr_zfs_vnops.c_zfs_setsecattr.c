
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
typedef int zilog_t ;
struct TYPE_11__ {TYPE_1__* z_os; int * z_log; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int vsecattr_t ;
typedef int vnode_t ;
typedef int cred_t ;
typedef int caller_context_t ;
typedef int boolean_t ;
struct TYPE_9__ {scalar_t__ os_sync; } ;


 int ATTR_NOACLCHECK ;
 int B_FALSE ;
 int B_TRUE ;
 TYPE_2__* VTOZ (int *) ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int zfs_setacl (TYPE_2__*,int *,int ,int *) ;
 int zil_commit (int *,int ) ;

int
zfs_setsecattr(vnode_t *vp, vsecattr_t *vsecp, int flag, cred_t *cr,
    caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 int error;
 boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;
 zilog_t *zilog = zfsvfs->z_log;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 error = zfs_setacl(zp, vsecp, skipaclchk, cr);

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}

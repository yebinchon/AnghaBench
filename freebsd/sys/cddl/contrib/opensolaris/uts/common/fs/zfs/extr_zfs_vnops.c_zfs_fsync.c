
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int z_id; TYPE_3__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_10__ {int z_log; TYPE_1__* z_os; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int vnode_t ;
typedef int cred_t ;
typedef int caller_context_t ;
struct TYPE_8__ {scalar_t__ os_sync; } ;


 TYPE_2__* VTOZ (int *) ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SYNC_DISABLED ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int tsd_set (int ,void*) ;
 scalar_t__ zfs_fsync_sync_cnt ;
 int zfs_fsyncer_key ;
 int zil_commit (int ,int ) ;

__attribute__((used)) static int
zfs_fsync(vnode_t *vp, int syncflag, cred_t *cr, caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;

 (void) tsd_set(zfs_fsyncer_key, (void *)zfs_fsync_sync_cnt);

 if (zfsvfs->z_os->os_sync != ZFS_SYNC_DISABLED) {
  ZFS_ENTER(zfsvfs);
  ZFS_VERIFY_ZP(zp);
  zil_commit(zfsvfs->z_log, zp->z_id);
  ZFS_EXIT(zfsvfs);
 }
 return (0);
}

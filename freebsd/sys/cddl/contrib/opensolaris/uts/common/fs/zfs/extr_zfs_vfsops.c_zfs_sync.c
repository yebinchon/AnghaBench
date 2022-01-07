
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * z_log; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_10__ {TYPE_1__* vfs_data; } ;
typedef TYPE_2__ vfs_t ;
struct TYPE_11__ {int dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;


 int MNT_LAZY ;
 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 TYPE_3__* dmu_objset_pool (int ) ;
 scalar_t__ panicstr ;
 scalar_t__ spa_suspended (int ) ;
 int spa_sync_allpools () ;
 scalar_t__ sys_shutdown ;
 int vfs_stdsync (TYPE_2__*,int) ;
 int zil_commit (int *,int ) ;

__attribute__((used)) static int
zfs_sync(vfs_t *vfsp, int waitfor)
{





 if (panicstr)
  return (0);





 if (waitfor == MNT_LAZY)
  return (0);

 if (vfsp != ((void*)0)) {



  zfsvfs_t *zfsvfs = vfsp->vfs_data;
  dsl_pool_t *dp;
  int error;

  error = vfs_stdsync(vfsp, waitfor);
  if (error != 0)
   return (error);

  ZFS_ENTER(zfsvfs);
  dp = dmu_objset_pool(zfsvfs->z_os);





  if (sys_shutdown && spa_suspended(dp->dp_spa)) {
   ZFS_EXIT(zfsvfs);
   return (0);
  }

  if (zfsvfs->z_log != ((void*)0))
   zil_commit(zfsvfs->z_log, 0);

  ZFS_EXIT(zfsvfs);
 } else {





  spa_sync_allpools();
 }

 return (0);
}

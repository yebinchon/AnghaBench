
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* z_os; TYPE_7__* z_vfs; int z_replay; int z_log; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int boolean_t ;
struct TYPE_13__ {int vfs_flag; } ;
struct TYPE_12__ {int os_user_ptr_lock; } ;


 int B_FALSE ;
 int B_TRUE ;
 int VFS_RDONLY ;
 int dmu_objset_set_user (TYPE_2__*,TYPE_1__*) ;
 int dmu_objset_spa (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_writeable (int ) ;
 int zfs_get_data ;
 int zfs_register_callbacks (TYPE_7__*) ;
 int zfs_replay_vector ;
 int zfs_unlinked_drain (TYPE_1__*) ;
 int zil_destroy (int ,int ) ;
 int zil_open (TYPE_2__*,int ) ;
 int zil_replay (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ zil_replay_disable ;

__attribute__((used)) static int
zfsvfs_setup(zfsvfs_t *zfsvfs, boolean_t mounting)
{
 int error;

 error = zfs_register_callbacks(zfsvfs->z_vfs);
 if (error)
  return (error);

 zfsvfs->z_log = zil_open(zfsvfs->z_os, zfs_get_data);






 if (mounting) {
  boolean_t readonly;





  readonly = zfsvfs->z_vfs->vfs_flag & VFS_RDONLY;
  if (readonly != 0)
   zfsvfs->z_vfs->vfs_flag &= ~VFS_RDONLY;
  else
   zfs_unlinked_drain(zfsvfs);
  if (spa_writeable(dmu_objset_spa(zfsvfs->z_os))) {
   if (zil_replay_disable) {
    zil_destroy(zfsvfs->z_log, B_FALSE);
   } else {
    zfsvfs->z_replay = B_TRUE;
    zil_replay(zfsvfs->z_os, zfsvfs,
        zfs_replay_vector);
    zfsvfs->z_replay = B_FALSE;
   }
  }
  zfsvfs->z_vfs->vfs_flag |= readonly;
 }




 mutex_enter(&zfsvfs->z_os->os_user_ptr_lock);
 dmu_objset_set_user(zfsvfs->z_os, zfsvfs);
 mutex_exit(&zfsvfs->z_os->os_user_ptr_lock);

 return (0);
}

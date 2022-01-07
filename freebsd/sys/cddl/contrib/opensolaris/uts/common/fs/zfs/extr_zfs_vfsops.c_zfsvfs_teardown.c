
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {scalar_t__ z_sa_hdl; } ;
typedef TYPE_3__ znode_t ;
struct TYPE_17__ {int * z_os; TYPE_2__* z_vfs; int z_teardown_lock; int z_teardown_inactive_lock; scalar_t__ z_unmounted; int z_znodes_lock; int z_all_znodes; int * z_log; TYPE_1__* z_parent; } ;
typedef TYPE_4__ zfsvfs_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_15__ {int vfs_flag; } ;
struct TYPE_14__ {int z_vfs; } ;
struct TYPE_13__ {scalar_t__ v_count; } ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int EIO ;
 int FTAG ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int VFS_RDONLY ;
 TYPE_11__* ZTOV (TYPE_3__*) ;
 int cache_purgevfs (int ,int) ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_evict_dbufs (int *) ;
 int dmu_objset_pool (int *) ;
 int dnlc_purge_vfsp (int ,int ) ;
 scalar_t__ dsl_dataset_is_dirty (int ) ;
 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rrm_enter (int *,int ,int ) ;
 int rrm_exit (int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int txg_wait_synced (int ,int ) ;
 int zfs_unregister_callbacks (TYPE_4__*) ;
 int zfs_znode_dmu_fini (TYPE_3__*) ;
 int zil_close (int *) ;

__attribute__((used)) static int
zfsvfs_teardown(zfsvfs_t *zfsvfs, boolean_t unmounting)
{
 znode_t *zp;

 rrm_enter(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);

 if (!unmounting) {






  (void) dnlc_purge_vfsp(zfsvfs->z_parent->z_vfs, 0);



 }





 if (zfsvfs->z_log) {
  zil_close(zfsvfs->z_log);
  zfsvfs->z_log = ((void*)0);
 }

 rw_enter(&zfsvfs->z_teardown_inactive_lock, RW_WRITER);






 if (!unmounting && (zfsvfs->z_unmounted || zfsvfs->z_os == ((void*)0))) {
  rw_exit(&zfsvfs->z_teardown_inactive_lock);
  rrm_exit(&zfsvfs->z_teardown_lock, FTAG);
  return (SET_ERROR(EIO));
 }
 mutex_enter(&zfsvfs->z_znodes_lock);
 for (zp = list_head(&zfsvfs->z_all_znodes); zp != ((void*)0);
     zp = list_next(&zfsvfs->z_all_znodes, zp))
  if (zp->z_sa_hdl) {
   ASSERT(ZTOV(zp)->v_count >= 0);
   zfs_znode_dmu_fini(zp);
  }
 mutex_exit(&zfsvfs->z_znodes_lock);






 if (unmounting) {
  zfsvfs->z_unmounted = B_TRUE;
  rw_exit(&zfsvfs->z_teardown_inactive_lock);
  rrm_exit(&zfsvfs->z_teardown_lock, FTAG);
 }






 if (zfsvfs->z_os == ((void*)0))
  return (0);




 zfs_unregister_callbacks(zfsvfs);




 if (dsl_dataset_is_dirty(dmu_objset_ds(zfsvfs->z_os)) &&
     !(zfsvfs->z_vfs->vfs_flag & VFS_RDONLY))
  txg_wait_synced(dmu_objset_pool(zfsvfs->z_os), 0);
 dmu_objset_evict_dbufs(zfsvfs->z_os);

 return (0);
}

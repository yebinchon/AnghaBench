
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * z_hold_mtx; int z_fuid_lock; int z_teardown_inactive_lock; int z_teardown_lock; int z_all_znodes; int z_lock; int z_znodes_lock; } ;
typedef TYPE_1__ zfsvfs_t ;


 int RW_READER ;
 int ZFS_OBJ_MTX_SZ ;
 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;
 int rrm_destroy (int *) ;
 int rw_destroy (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_fuid_destroy (TYPE_1__*) ;
 int zfsvfs_lock ;

void
zfsvfs_free(zfsvfs_t *zfsvfs)
{
 int i;







 rw_enter(&zfsvfs_lock, RW_READER);
 rw_exit(&zfsvfs_lock);

 zfs_fuid_destroy(zfsvfs);

 mutex_destroy(&zfsvfs->z_znodes_lock);
 mutex_destroy(&zfsvfs->z_lock);
 list_destroy(&zfsvfs->z_all_znodes);
 rrm_destroy(&zfsvfs->z_teardown_lock);
 rw_destroy(&zfsvfs->z_teardown_inactive_lock);
 rw_destroy(&zfsvfs->z_fuid_lock);
 for (i = 0; i != ZFS_OBJ_MTX_SZ; i++)
  mutex_destroy(&zfsvfs->z_hold_mtx[i]);
 kmem_free(zfsvfs, sizeof (zfsvfs_t));
}

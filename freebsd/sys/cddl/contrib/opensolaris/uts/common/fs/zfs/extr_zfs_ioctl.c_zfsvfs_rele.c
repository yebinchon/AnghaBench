
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_os; scalar_t__ z_vfs; int z_teardown_lock; } ;
typedef TYPE_1__ zfsvfs_t ;


 int VFS_RELE (scalar_t__) ;
 int dmu_objset_disown (int ,TYPE_1__*) ;
 int rrm_exit (int *,void*) ;
 int vfs_unbusy (scalar_t__) ;
 int zfsvfs_free (TYPE_1__*) ;

__attribute__((used)) static void
zfsvfs_rele(zfsvfs_t *zfsvfs, void *tag)
{
 rrm_exit(&zfsvfs->z_teardown_lock, tag);

 if (zfsvfs->z_vfs) {



  vfs_unbusy(zfsvfs->z_vfs);

 } else {
  dmu_objset_disown(zfsvfs->z_os, zfsvfs);
  zfsvfs_free(zfsvfs);
 }
}

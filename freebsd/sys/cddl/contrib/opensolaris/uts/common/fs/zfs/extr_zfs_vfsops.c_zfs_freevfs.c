
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* z_parent; scalar_t__ z_issnap; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_9__ {TYPE_2__* vfs_data; } ;
typedef TYPE_3__ vfs_t ;
struct TYPE_7__ {int z_vfs; } ;


 int VFS_RELE (int ) ;
 int atomic_dec_32 (int *) ;
 TYPE_3__* rootvfs ;
 int zfs_active_fs_count ;
 int zfsvfs_free (TYPE_2__*) ;

__attribute__((used)) static void
zfs_freevfs(vfs_t *vfsp)
{
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 zfsvfs_free(zfsvfs);

 atomic_dec_32(&zfs_active_fs_count);
}

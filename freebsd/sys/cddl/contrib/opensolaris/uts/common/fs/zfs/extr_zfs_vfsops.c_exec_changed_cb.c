
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int vfs_flag; } ;


 scalar_t__ FALSE ;
 int MNTOPT_EXEC ;
 int MNTOPT_NOEXEC ;
 int VFS_NOEXEC ;
 int vfs_clearmntopt (TYPE_2__*,int ) ;
 int vfs_setmntopt (TYPE_2__*,int ,int *,int ) ;

__attribute__((used)) static void
exec_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;

 if (newval == FALSE) {
  zfsvfs->z_vfs->vfs_flag |= VFS_NOEXEC;
  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_EXEC);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_NOEXEC, ((void*)0), 0);
 } else {
  zfsvfs->z_vfs->vfs_flag &= ~VFS_NOEXEC;
  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_NOEXEC);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_EXEC, ((void*)0), 0);
 }
}

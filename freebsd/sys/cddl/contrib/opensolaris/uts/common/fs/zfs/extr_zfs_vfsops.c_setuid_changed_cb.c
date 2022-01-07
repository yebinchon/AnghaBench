
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
 int MNTOPT_NOSETUID ;
 int MNTOPT_SETUID ;
 int VFS_NOSETUID ;
 int vfs_clearmntopt (TYPE_2__*,int ) ;
 int vfs_setmntopt (TYPE_2__*,int ,int *,int ) ;

__attribute__((used)) static void
setuid_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;

 if (newval == FALSE) {
  zfsvfs->z_vfs->vfs_flag |= VFS_NOSETUID;
  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_SETUID);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_NOSETUID, ((void*)0), 0);
 } else {
  zfsvfs->z_vfs->vfs_flag &= ~VFS_NOSETUID;
  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_NOSETUID);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_SETUID, ((void*)0), 0);
 }
}

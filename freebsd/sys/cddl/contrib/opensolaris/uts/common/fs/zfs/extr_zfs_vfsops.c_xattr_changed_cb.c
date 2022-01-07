
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


 int MNTOPT_NOXATTR ;
 int MNTOPT_XATTR ;
 scalar_t__ TRUE ;
 int VFS_XATTR ;
 int vfs_clearmntopt (TYPE_2__*,int ) ;
 int vfs_setmntopt (TYPE_2__*,int ,int *,int ) ;

__attribute__((used)) static void
xattr_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;

 if (newval == TRUE) {




  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_NOXATTR);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_XATTR, ((void*)0), 0);
 } else {




  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_XATTR);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_NOXATTR, ((void*)0), 0);
 }
}

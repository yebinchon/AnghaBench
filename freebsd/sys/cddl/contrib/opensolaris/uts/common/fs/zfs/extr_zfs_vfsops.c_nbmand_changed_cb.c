
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ FALSE ;
 int MNTOPT_NBMAND ;
 int MNTOPT_NONBMAND ;
 int vfs_clearmntopt (int ,int ) ;
 int vfs_setmntopt (int ,int ,int *,int ) ;

__attribute__((used)) static void
nbmand_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;
 if (newval == FALSE) {
  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_NBMAND);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_NONBMAND, ((void*)0), 0);
 } else {
  vfs_clearmntopt(zfsvfs->z_vfs, MNTOPT_NONBMAND);
  vfs_setmntopt(zfsvfs->z_vfs, MNTOPT_NBMAND, ((void*)0), 0);
 }
}

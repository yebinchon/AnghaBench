
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_os; int z_version; int z_use_sa; scalar_t__ z_vfs; scalar_t__ z_use_fuids; } ;
typedef TYPE_1__ zfsvfs_t ;


 scalar_t__ USE_FUIDS (int ,int ) ;
 int USE_SA (int ,int ) ;
 int VFSFT_ACCESS_FILTER ;
 int VFSFT_ACEMASKONACCESS ;
 int VFSFT_ACLONCREATE ;
 int VFSFT_REPARSE ;
 int VFSFT_SYSATTR_VIEWS ;
 int VFSFT_XVATTR ;
 int vfs_clear_feature (scalar_t__,int ) ;
 int vfs_set_feature (scalar_t__,int ) ;

__attribute__((used)) static void
zfs_set_fuid_feature(zfsvfs_t *zfsvfs)
{
 zfsvfs->z_use_fuids = USE_FUIDS(zfsvfs->z_version, zfsvfs->z_os);
 if (zfsvfs->z_vfs) {
  if (zfsvfs->z_use_fuids) {
   vfs_set_feature(zfsvfs->z_vfs, VFSFT_XVATTR);
   vfs_set_feature(zfsvfs->z_vfs, VFSFT_SYSATTR_VIEWS);
   vfs_set_feature(zfsvfs->z_vfs, VFSFT_ACEMASKONACCESS);
   vfs_set_feature(zfsvfs->z_vfs, VFSFT_ACLONCREATE);
   vfs_set_feature(zfsvfs->z_vfs, VFSFT_ACCESS_FILTER);
   vfs_set_feature(zfsvfs->z_vfs, VFSFT_REPARSE);
  } else {
   vfs_clear_feature(zfsvfs->z_vfs, VFSFT_XVATTR);
   vfs_clear_feature(zfsvfs->z_vfs, VFSFT_SYSATTR_VIEWS);
   vfs_clear_feature(zfsvfs->z_vfs, VFSFT_ACEMASKONACCESS);
   vfs_clear_feature(zfsvfs->z_vfs, VFSFT_ACLONCREATE);
   vfs_clear_feature(zfsvfs->z_vfs, VFSFT_ACCESS_FILTER);
   vfs_clear_feature(zfsvfs->z_vfs, VFSFT_REPARSE);
  }
 }
 zfsvfs->z_use_sa = USE_SA(zfsvfs->z_version, zfsvfs->z_os);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int vfs_flag; } ;
typedef int cred_t ;


 int MNTOPT_NOSETUID ;
 int MNTOPT_SETUID ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_USER ;
 int PRIV_VFS_MOUNT_NONUSER ;
 int VFS_NOSETUID ;
 scalar_t__ priv_check_cred (int *,int ) ;
 int vfs_clearmntopt (struct mount*,int ) ;
 int vfs_setmntopt (struct mount*,int ,int *,int ) ;

void
secpolicy_fs_mount_clearopts(cred_t *cr, struct mount *vfsp)
{

 if (priv_check_cred(cr, PRIV_VFS_MOUNT_NONUSER) != 0) {
  MNT_ILOCK(vfsp);
  vfsp->vfs_flag |= VFS_NOSETUID | MNT_USER;
  vfs_clearmntopt(vfsp, MNTOPT_SETUID);
  vfs_setmntopt(vfsp, MNTOPT_NOSETUID, ((void*)0), 0);
  MNT_IUNLOCK(vfsp);
 }
}

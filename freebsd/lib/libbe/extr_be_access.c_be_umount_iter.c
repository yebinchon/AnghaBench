
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
struct be_mount_info {int lbh; int mntflags; int depth; } ;


 int BE_ERR_BADPATH ;
 int BE_ERR_PATHBUSY ;
 int BE_ERR_PATHLEN ;
 int BE_ERR_PERMS ;
 int BE_ERR_UNKNOWN ;






 int errno ;
 int free (char*) ;
 int set_error (int ,int ) ;
 int zfs_is_mounted (int *,char**) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),struct be_mount_info*) ;
 scalar_t__ zfs_unmount (int *,int *,int ) ;

__attribute__((used)) static int
be_umount_iter(zfs_handle_t *zfs_hdl, void *data)
{

 int err;
 char *mountpoint;
 struct be_mount_info *info;

 info = (struct be_mount_info *)data;

 ++info->depth;
 if((err = zfs_iter_filesystems(zfs_hdl, be_umount_iter, info)) != 0) {
  return (err);
 }
 --info->depth;

 if (!zfs_is_mounted(zfs_hdl, &mountpoint)) {
  return (0);
 }
 free(mountpoint);

 if (zfs_unmount(zfs_hdl, ((void*)0), info->mntflags) != 0) {
  switch (errno) {
  case 131:
   return (set_error(info->lbh, BE_ERR_PATHLEN));
  case 132:
  case 130:
  case 129:
   return (set_error(info->lbh, BE_ERR_BADPATH));
  case 128:
   return (set_error(info->lbh, BE_ERR_PERMS));
  case 133:
   return (set_error(info->lbh, BE_ERR_PATHBUSY));
  default:
   return (set_error(info->lbh, BE_ERR_UNKNOWN));
  }
 }
 return (0);
}

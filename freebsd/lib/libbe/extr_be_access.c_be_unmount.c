
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct be_mount_info {char* be; scalar_t__ depth; int mntflags; int * mountpoint; TYPE_1__* lbh; } ;
struct TYPE_5__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_SUCCESS ;
 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;
 int BE_MNT_FORCE ;
 int MS_FORCE ;
 int ZFS_TYPE_FILESYSTEM ;
 int be_root_concat (TYPE_1__*,char*,char*) ;
 int be_umount_iter (int *,struct be_mount_info*) ;
 int set_error (TYPE_1__*,int) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;

int
be_unmount(libbe_handle_t *lbh, char *bootenv, int flags)
{
 int err;
 char be[BE_MAXPATHLEN];
 zfs_handle_t *root_hdl;
 struct be_mount_info info;

 if ((err = be_root_concat(lbh, bootenv, be)) != 0)
  return (set_error(lbh, err));

 if ((root_hdl = zfs_open(lbh->lzh, be, ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (set_error(lbh, BE_ERR_ZFSOPEN));

 info.lbh = lbh;
 info.be = be;
 info.mountpoint = ((void*)0);
 info.mntflags = (flags & BE_MNT_FORCE) ? MS_FORCE : 0;
 info.depth = 0;

 if ((err = be_umount_iter(root_hdl, &info)) != 0) {
  zfs_close(root_hdl);
  return (err);
 }

 zfs_close(root_hdl);
 return (BE_ERR_SUCCESS);
}

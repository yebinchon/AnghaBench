
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct be_mount_info {char* be; char* mountpoint; int mntflags; int deepmount; scalar_t__ depth; TYPE_1__* lbh; } ;
typedef int mnt_temp ;
struct TYPE_6__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_IO ;
 int BE_ERR_MOUNTED ;
 int BE_ERR_SUCCESS ;
 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;
 int BE_MNT_DEEP ;
 int BE_MNT_FORCE ;
 int MNT_FORCE ;
 int ZFS_TYPE_FILESYSTEM ;
 int be_exists (TYPE_1__*,char*) ;
 scalar_t__ be_mount_iter (int *,struct be_mount_info*) ;
 int be_root_concat (TYPE_1__*,char*,char*) ;
 scalar_t__ is_mounted (int ,char*,int *) ;
 int * mkdtemp (char*) ;
 int set_error (TYPE_1__*,int) ;
 int strlcpy (char*,char*,int) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;

int
be_mount(libbe_handle_t *lbh, char *bootenv, char *mountpoint, int flags,
    char *result_loc)
{
 char be[BE_MAXPATHLEN];
 char mnt_temp[BE_MAXPATHLEN];
 int mntflags, mntdeep;
 int err;
 struct be_mount_info info;
 zfs_handle_t *zhdl;

 if ((err = be_root_concat(lbh, bootenv, be)) != 0)
  return (set_error(lbh, err));

 if ((err = be_exists(lbh, bootenv)) != 0)
  return (set_error(lbh, err));

 if (is_mounted(lbh->lzh, be, ((void*)0)))
  return (set_error(lbh, BE_ERR_MOUNTED));

 mntdeep = (flags & BE_MNT_DEEP) ? 1 : 0;
 mntflags = (flags & BE_MNT_FORCE) ? MNT_FORCE : 0;


 if (mountpoint == ((void*)0)) {
  strlcpy(mnt_temp, "/tmp/be_mount.XXXX", sizeof(mnt_temp));
  if (mkdtemp(mnt_temp) == ((void*)0))
   return (set_error(lbh, BE_ERR_IO));
 }

 if ((zhdl = zfs_open(lbh->lzh, be, ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (set_error(lbh, BE_ERR_ZFSOPEN));

 info.lbh = lbh;
 info.be = be;
 info.mountpoint = (mountpoint == ((void*)0)) ? mnt_temp : mountpoint;
 info.mntflags = mntflags;
 info.deepmount = mntdeep;
 info.depth = 0;

 if((err = be_mount_iter(zhdl, &info) != 0)) {
  zfs_close(zhdl);
  return (err);
 }
 zfs_close(zhdl);

 if (result_loc != ((void*)0))
  strlcpy(result_loc, mountpoint == ((void*)0) ? mnt_temp : mountpoint,
      BE_MAXPATHLEN);

 return (BE_ERR_SUCCESS);
}

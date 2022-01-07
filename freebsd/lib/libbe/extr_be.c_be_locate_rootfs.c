
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct statfs {int dummy; } ;
struct extmnttab {int mnt_fstype; } ;
struct TYPE_3__ {int rootfs; int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int MNTTYPE_ZFS ;
 int ZFS_TYPE_FILESYSTEM ;
 scalar_t__ statfs (char*,struct statfs*) ;
 int statfs2mnttab (struct statfs*,struct extmnttab*) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int zfs_close (int *) ;
 int zfs_get_name (int *) ;
 int * zfs_path_to_zhandle (int ,char*,int ) ;

__attribute__((used)) static int
be_locate_rootfs(libbe_handle_t *lbh)
{
 struct statfs sfs;
 struct extmnttab entry;
 zfs_handle_t *zfs;







 if (statfs("/", &sfs) == 0) {
  statfs2mnttab(&sfs, &entry);
  if (strcmp(entry.mnt_fstype, MNTTYPE_ZFS) != 0)
   return (1);
 } else
  return (1);
 zfs = zfs_path_to_zhandle(lbh->lzh, "/", ZFS_TYPE_FILESYSTEM);
 if (zfs == ((void*)0))
  return (1);

 strlcpy(lbh->rootfs, zfs_get_name(zfs), sizeof(lbh->rootfs));
 zfs_close(zfs);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zfs_unmount_snap (char const*) ;

__attribute__((used)) static int
zfs_unmount_snap_cb(const char *snapname, void *arg)
{
 zfs_unmount_snap(snapname);
 return (0);
}

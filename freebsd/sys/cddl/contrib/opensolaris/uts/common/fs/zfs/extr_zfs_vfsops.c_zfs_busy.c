
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ zfs_active_fs_count ;

int
zfs_busy(void)
{
 return (zfs_active_fs_count != 0);
}

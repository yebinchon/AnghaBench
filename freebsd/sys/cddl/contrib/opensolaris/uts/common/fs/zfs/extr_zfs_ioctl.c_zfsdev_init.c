
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_OPERATOR ;
 int UID_ROOT ;
 int ZFS_DEV_NAME ;
 int make_dev (int *,int,int ,int ,int,int ) ;
 int zfs_cdevsw ;
 int zfsdev ;

__attribute__((used)) static void
zfsdev_init(void)
{
 zfsdev = make_dev(&zfs_cdevsw, 0x0, UID_ROOT, GID_OPERATOR, 0666,
     ZFS_DEV_NAME);
}

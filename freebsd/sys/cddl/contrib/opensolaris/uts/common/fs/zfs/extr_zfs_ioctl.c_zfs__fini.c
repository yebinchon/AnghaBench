
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int mutex_destroy (int *) ;
 int rrw_tsd_key ;
 scalar_t__ spa_busy () ;
 int spa_fini () ;
 int tsd_destroy (int *) ;
 int zfs_allow_log_key ;
 scalar_t__ zfs_busy () ;
 int zfs_fini () ;
 int zfs_fsyncer_key ;
 int zfs_share_lock ;
 int zfsdev_fini () ;
 scalar_t__ zio_injection_enabled ;
 scalar_t__ zvol_busy () ;
 int zvol_fini () ;

int
zfs__fini(void)
{
 if (spa_busy() || zfs_busy() || zvol_busy() ||
     zio_injection_enabled) {
  return (EBUSY);
 }

 zfsdev_fini();
 zvol_fini();
 zfs_fini();
 spa_fini();

 tsd_destroy(&zfs_fsyncer_key);
 tsd_destroy(&rrw_tsd_key);
 tsd_destroy(&zfs_allow_log_key);

 mutex_destroy(&zfs_share_lock);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_secpolicy_func_t ;
typedef int zfs_ioc_t ;
typedef int zfs_ioc_legacy_func_t ;


 int B_FALSE ;
 int NO_NAME ;
 int POOL_CHECK_NONE ;
 int zfs_ioctl_register_legacy (int ,int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
zfs_ioctl_register_pool_meta(zfs_ioc_t ioc, zfs_ioc_legacy_func_t *func,
    zfs_secpolicy_func_t *secpolicy)
{
 zfs_ioctl_register_legacy(ioc, func, secpolicy,
     NO_NAME, B_FALSE, POOL_CHECK_NONE);
}

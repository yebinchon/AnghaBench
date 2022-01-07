
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_ioc_t ;
typedef int zfs_ioc_legacy_func_t ;


 int zfs_ioctl_register_dataset_read_secpolicy (int ,int *,int ) ;
 int zfs_secpolicy_read ;

__attribute__((used)) static void
zfs_ioctl_register_dataset_read(zfs_ioc_t ioc, zfs_ioc_legacy_func_t *func)
{
 zfs_ioctl_register_dataset_read_secpolicy(ioc, func,
     zfs_secpolicy_read);
}

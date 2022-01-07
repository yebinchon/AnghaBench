
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ZFS_PROP_VERSION ;
 int zfs_secpolicy_setprop (int ,int ,int *,int *) ;

__attribute__((used)) static int
zfs_secpolicy_userspace_upgrade(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 return (zfs_secpolicy_setprop(zc->zc_name, ZFS_PROP_VERSION,
     ((void*)0), cr));
}

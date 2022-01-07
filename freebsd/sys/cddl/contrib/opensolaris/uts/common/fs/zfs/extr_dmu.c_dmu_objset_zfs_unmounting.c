
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ DMU_OST_ZFS ;
 scalar_t__ dmu_objset_type (int *) ;
 int zfs_get_vfs_flag_unmounted (int *) ;

__attribute__((used)) static boolean_t
dmu_objset_zfs_unmounting(objset_t *os)
{




 return (B_FALSE);
}

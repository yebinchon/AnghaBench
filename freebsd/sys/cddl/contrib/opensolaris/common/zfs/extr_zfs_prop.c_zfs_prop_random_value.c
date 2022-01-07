
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;


 int ZFS_TYPE_DATASET ;
 int zprop_random_value (int ,int ,int ) ;

uint64_t
zfs_prop_random_value(zfs_prop_t prop, uint64_t seed)
{
 return (zprop_random_value(prop, seed, ZFS_TYPE_DATASET));
}

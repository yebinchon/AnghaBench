
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zprop_type_t ;
typedef size_t zfs_prop_t ;
struct TYPE_2__ {int pd_proptype; } ;


 TYPE_1__* zfs_prop_table ;

zprop_type_t
zfs_prop_get_type(zfs_prop_t prop)
{
 return (zfs_prop_table[prop].pd_proptype);
}

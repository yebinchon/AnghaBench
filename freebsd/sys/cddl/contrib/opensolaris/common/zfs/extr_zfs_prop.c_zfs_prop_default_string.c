
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zfs_prop_t ;
struct TYPE_2__ {char const* pd_strdefault; } ;


 TYPE_1__* zfs_prop_table ;

const char *
zfs_prop_default_string(zfs_prop_t prop)
{
 return (zfs_prop_table[prop].pd_strdefault);
}

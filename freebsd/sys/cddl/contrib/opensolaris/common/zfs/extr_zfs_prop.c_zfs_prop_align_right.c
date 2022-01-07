
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zfs_prop_t ;
typedef int boolean_t ;
struct TYPE_2__ {int pd_rightalign; } ;


 TYPE_1__* zfs_prop_table ;

boolean_t
zfs_prop_align_right(zfs_prop_t prop)
{
 return (zfs_prop_table[prop].pd_rightalign);
}

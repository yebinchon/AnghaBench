
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zpool_prop_t ;
typedef int uint64_t ;
struct TYPE_2__ {int pd_numdefault; } ;


 TYPE_1__* zpool_prop_table ;

uint64_t
zpool_prop_default_numeric(zpool_prop_t prop)
{
 return (zpool_prop_table[prop].pd_numdefault);
}

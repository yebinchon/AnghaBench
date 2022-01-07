
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zpool_prop_t ;
struct TYPE_2__ {char const* pd_colname; } ;


 TYPE_1__* zpool_prop_table ;

const char *
zpool_prop_column_name(zpool_prop_t prop)
{
 return (zpool_prop_table[prop].pd_colname);
}

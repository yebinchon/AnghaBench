
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t pi_value; } ;
typedef TYPE_1__ zprop_index_t ;
struct TYPE_5__ {size_t pd_table_size; TYPE_1__* pd_table; } ;
typedef TYPE_2__ zprop_desc_t ;
typedef int zfs_type_t ;
typedef scalar_t__ uint_t ;
typedef size_t uint64_t ;


 int ASSERT (int) ;
 scalar_t__ zprop_get_numprops (int ) ;
 TYPE_2__* zprop_get_proptable (int ) ;

uint64_t
zprop_random_value(int prop, uint64_t seed, zfs_type_t type)
{
 zprop_desc_t *prop_tbl;
 const zprop_index_t *idx_tbl;

 ASSERT((uint_t)prop < zprop_get_numprops(type));
 prop_tbl = zprop_get_proptable(type);
 idx_tbl = prop_tbl[prop].pd_table;

 if (idx_tbl == ((void*)0))
  return (seed);

 return (idx_tbl[seed % prop_tbl[prop].pd_table_size].pi_value);
}

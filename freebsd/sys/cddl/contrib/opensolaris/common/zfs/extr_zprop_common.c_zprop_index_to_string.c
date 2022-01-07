
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pi_name; scalar_t__ pi_value; } ;
typedef TYPE_1__ zprop_index_t ;
struct TYPE_5__ {TYPE_1__* pd_table; } ;
typedef TYPE_2__ zprop_desc_t ;
typedef int zfs_type_t ;
typedef scalar_t__ uint64_t ;


 int ASSERT (int) ;
 int ZPROP_CONT ;
 int ZPROP_INVAL ;
 int zprop_get_numprops (int ) ;
 TYPE_2__* zprop_get_proptable (int ) ;

int
zprop_index_to_string(int prop, uint64_t index, const char **string,
    zfs_type_t type)
{
 zprop_desc_t *prop_tbl;
 const zprop_index_t *idx_tbl;
 int i;

 if (prop == ZPROP_INVAL || prop == ZPROP_CONT)
  return (-1);

 ASSERT(prop < zprop_get_numprops(type));
 prop_tbl = zprop_get_proptable(type);
 if ((idx_tbl = prop_tbl[prop].pd_table) == ((void*)0))
  return (-1);

 for (i = 0; idx_tbl[i].pi_name != ((void*)0); i++) {
  if (idx_tbl[i].pi_value == index) {
   *string = idx_tbl[i].pi_name;
   return (0);
  }
 }

 return (-1);
}

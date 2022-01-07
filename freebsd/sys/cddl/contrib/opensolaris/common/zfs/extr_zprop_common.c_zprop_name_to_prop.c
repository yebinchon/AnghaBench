
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_type_t ;
struct TYPE_3__ {char const* propname; int prop_tbl; } ;
typedef TYPE_1__ name_to_prop_cb_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZPROP_CONT ;
 int ZPROP_INVAL ;
 int zprop_get_proptable (int ) ;
 int zprop_iter_common (int ,TYPE_1__*,int ,int ,int ) ;
 int zprop_name_to_prop_cb ;

int
zprop_name_to_prop(const char *propname, zfs_type_t type)
{
 int prop;
 name_to_prop_cb_t cb_data;

 cb_data.propname = propname;
 cb_data.prop_tbl = zprop_get_proptable(type);

 prop = zprop_iter_common(zprop_name_to_prop_cb, &cb_data,
     B_TRUE, B_FALSE, type);

 return (prop == ZPROP_CONT ? ZPROP_INVAL : prop);
}

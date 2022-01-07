
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zprop_type_t ;
typedef int zprop_attr_t ;


 int B_FALSE ;
 scalar_t__ PROP_TYPE_NUMBER ;
 int zprop_register_impl (int,char const*,scalar_t__,int ,int *,int ,int,int *,char const*,int,int ,int *) ;

void
zprop_register_hidden(int prop, const char *name, zprop_type_t type,
    zprop_attr_t attr, int objset_types, const char *colname)
{
 zprop_register_impl(prop, name, type, 0, ((void*)0), attr,
     objset_types, ((void*)0), colname,
     type == PROP_TYPE_NUMBER, B_FALSE, ((void*)0));
}

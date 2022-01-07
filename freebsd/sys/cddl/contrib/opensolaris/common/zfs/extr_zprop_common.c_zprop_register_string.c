
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_attr_t ;


 int B_FALSE ;
 int B_TRUE ;
 int PROP_TYPE_STRING ;
 int zprop_register_impl (int,char const*,int ,int ,char const*,int ,int,char const*,char const*,int ,int ,int *) ;

void
zprop_register_string(int prop, const char *name, const char *def,
    zprop_attr_t attr, int objset_types, const char *values,
    const char *colname)
{
 zprop_register_impl(prop, name, PROP_TYPE_STRING, 0, def, attr,
     objset_types, values, colname, B_FALSE, B_TRUE, ((void*)0));

}

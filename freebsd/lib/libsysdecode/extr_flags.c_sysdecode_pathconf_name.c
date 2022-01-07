
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int pathconfname ;

const char *
sysdecode_pathconf_name(int name)
{

 return (lookup_value(pathconfname, name));
}

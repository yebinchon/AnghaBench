
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int minheritflags ;

const char *
sysdecode_minherit_inherit(int inherit)
{

 return (lookup_value(minheritflags, inherit));
}

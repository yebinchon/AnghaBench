
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acltype ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_acltype(int type)
{

 return (lookup_value(acltype, type));
}

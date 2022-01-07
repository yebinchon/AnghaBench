
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getfsstatmode ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_getfsstat_mode(int mode)
{

 return (lookup_value(getfsstatmode, mode));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int rlimit ;

const char *
sysdecode_rlimit(int resource)
{

 return (lookup_value(rlimit, resource));
}

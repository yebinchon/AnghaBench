
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sysarchnum ;

const char *
sysdecode_sysarch_number(int number)
{

 return (lookup_value(sysarchnum, number));
}

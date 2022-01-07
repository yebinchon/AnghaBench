
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int prio ;

const char *
sysdecode_prio_which(int which)
{

 return (lookup_value(prio, which));
}

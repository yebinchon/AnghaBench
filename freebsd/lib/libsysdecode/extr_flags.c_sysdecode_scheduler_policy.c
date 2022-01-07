
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int schedpolicy ;

const char *
sysdecode_scheduler_policy(int policy)
{

 return (lookup_value(schedpolicy, policy));
}

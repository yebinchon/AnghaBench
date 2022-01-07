
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int rusage ;

const char *
sysdecode_getrusage_who(int who)
{

 return (lookup_value(rusage, who));
}

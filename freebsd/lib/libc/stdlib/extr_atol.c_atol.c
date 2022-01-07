
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtol (char const*,char**,int) ;

long
atol(const char *str)
{
 return strtol(str, (char **)((void*)0), 10);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setenv (char const*,char const*,int) ;

int os_setenv(const char *name, const char *value, int overwrite)
{
 return setenv(name, value, overwrite);
}

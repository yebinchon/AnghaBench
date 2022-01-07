
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unsetenv (char const*) ;

int os_unsetenv(const char *name)
{





 return unsetenv(name);

}

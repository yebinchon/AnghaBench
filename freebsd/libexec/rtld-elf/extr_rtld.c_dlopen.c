
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* rtld_dlopen (char const*,int,int) ;

void *
dlopen(const char *name, int mode)
{

 return (rtld_dlopen(name, -1, mode));
}

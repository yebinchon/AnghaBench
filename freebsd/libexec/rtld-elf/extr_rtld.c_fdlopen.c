
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* rtld_dlopen (int *,int,int) ;

void *
fdlopen(int fd, int mode)
{

 return (rtld_dlopen(((void*)0), fd, mode));
}

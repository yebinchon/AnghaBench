
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_ioctl_arg (int,unsigned long,int *) ;

__attribute__((used)) static int
g_ioctl(int fd, unsigned long cmd)
{

 return (g_ioctl_arg(fd, cmd, ((void*)0)));
}

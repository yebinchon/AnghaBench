
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioctl (int,unsigned long,...) ;

__attribute__((used)) static int
g_ioctl_arg(int fd, unsigned long cmd, void *arg)
{
 int ret;

 if (arg != ((void*)0))
  ret = ioctl(fd, cmd, arg);
 else
  ret = ioctl(fd, cmd);
 return (ret >= 0 ? 0 : -1);
}

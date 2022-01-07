
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int ssize_t ;


 int DIOCGSECTORSIZE ;
 int g_ioctl_arg (int,int ,scalar_t__*) ;

ssize_t
g_sectorsize(int fd)
{
 u_int sectorsize;

 if (g_ioctl_arg(fd, DIOCGSECTORSIZE, &sectorsize) == -1)
  return (-1);
 return ((ssize_t)sectorsize);
}

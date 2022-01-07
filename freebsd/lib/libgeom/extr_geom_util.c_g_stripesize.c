
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DIOCGSTRIPESIZE ;
 int g_ioctl_arg (int,int ,int*) ;

off_t
g_stripesize(int fd)
{
 off_t stripesize;

 if (g_ioctl_arg(fd, DIOCGSTRIPESIZE, &stripesize) == -1)
  return (-1);
 return (stripesize);
}

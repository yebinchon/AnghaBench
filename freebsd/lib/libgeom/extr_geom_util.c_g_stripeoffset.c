
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DIOCGSTRIPEOFFSET ;
 int g_ioctl_arg (int,int ,int*) ;

off_t
g_stripeoffset(int fd)
{
 off_t stripeoffset;

 if (g_ioctl_arg(fd, DIOCGSTRIPEOFFSET, &stripeoffset) == -1)
  return (-1);
 return (stripeoffset);
}

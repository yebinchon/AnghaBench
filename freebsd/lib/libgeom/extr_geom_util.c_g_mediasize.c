
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DIOCGMEDIASIZE ;
 int g_ioctl_arg (int,int ,int*) ;

off_t
g_mediasize(int fd)
{
 off_t mediasize;

 if (g_ioctl_arg(fd, DIOCGMEDIASIZE, &mediasize) == -1)
  mediasize = -1;
 return (mediasize);
}

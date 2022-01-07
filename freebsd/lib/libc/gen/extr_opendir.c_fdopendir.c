
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int DTF_HIDEW ;
 int DTF_NODUP ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int * __opendir_common (int,int,int) ;
 int _fcntl (int,int ,int ) ;

DIR *
fdopendir(int fd)
{

 if (_fcntl(fd, F_SETFD, FD_CLOEXEC) == -1)
  return (((void*)0));
 return (__opendir_common(fd, DTF_HIDEW|DTF_NODUP, 1));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EINVAL ;
 int TIOCSCTTY ;
 int _ioctl (int,int ,int *) ;
 int errno ;
 scalar_t__ getsid (int ) ;

int
tcsetsid(int fd, pid_t pid)
{

 if (pid != getsid(0)) {
  errno = EINVAL;
  return (-1);
 }

 return (_ioctl(fd, TIOCSCTTY, ((void*)0)));
}

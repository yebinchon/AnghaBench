
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int TIOCGSID ;
 scalar_t__ _ioctl (int,int ,int*) ;

pid_t
tcgetsid(int fd)
{
 int s;

 if (_ioctl(fd, TIOCGSID, &s) < 0)
  return ((pid_t)-1);

 return ((pid_t)s);
}

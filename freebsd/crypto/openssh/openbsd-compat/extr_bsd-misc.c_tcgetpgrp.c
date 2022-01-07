
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int TIOCGPGRP ;
 int ioctl (int,int ,int*) ;

pid_t
tcgetpgrp(int fd)
{
 int ctty_pgrp;

 if (ioctl(fd, TIOCGPGRP, &ctty_pgrp) == -1)
  return(-1);
 else
  return(ctty_pgrp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ESRCH ;
 int errno ;
 int kill (int,int) ;

int
killpg(pid_t pgid, int sig)
{
 if (pgid == 1) {
  errno = ESRCH;
  return (-1);
 }
 return (kill(-pgid, sig));
}

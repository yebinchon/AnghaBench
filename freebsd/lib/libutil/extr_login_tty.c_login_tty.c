
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int close (int) ;
 int dup2 (int,int) ;
 int getsid (int ) ;
 int setsid () ;
 int tcsetsid (int,int) ;

int
login_tty(int fd)
{
 pid_t s;

 s = setsid();
 if (s == -1)
  s = getsid(0);
 if (tcsetsid(fd, s) == -1)
  return (-1);
 (void) dup2(fd, 0);
 (void) dup2(fd, 1);
 (void) dup2(fd, 2);
 if (fd > 2)
  (void) close(fd);
 return (0);
}

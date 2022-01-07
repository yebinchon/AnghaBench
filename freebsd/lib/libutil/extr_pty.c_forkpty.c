
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct termios {int dummy; } ;


 int close (int) ;
 int fork () ;
 int login_tty (int) ;
 int openpty (int*,int*,char*,struct termios*,struct winsize*) ;

int
forkpty(int *amaster, char *name, struct termios *termp, struct winsize *winp)
{
 int master, slave, pid;

 if (openpty(&master, &slave, name, termp, winp) == -1)
  return (-1);
 switch (pid = fork()) {
 case -1:
  (void)close(slave);
  return (-1);
 case 0:



  (void)close(master);
  login_tty(slave);
  return (0);
 }



 *amaster = master;
 (void) close(slave);
 return (pid);
}

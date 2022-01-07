
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarmtimer (int ) ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;
 int toplevel ;
 int ttyout ;
 int write (int ,char*,int) ;

void
intr(int signo)
{

 sigint_raised = 1;
 alarmtimer(0);
 if (fromatty)
  write(fileno(ttyout), "\n", 1);
 siglongjmp(toplevel, 1);
}

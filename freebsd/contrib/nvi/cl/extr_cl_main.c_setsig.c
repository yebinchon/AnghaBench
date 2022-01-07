
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;scalar_t__ sa_flags; int sa_mask; } ;


 int sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

__attribute__((used)) static int
setsig(int signo, struct sigaction *oactp, void (*handler)(int))
{
 struct sigaction act;







 act.sa_handler = handler;
 sigemptyset(&act.sa_mask);

 act.sa_flags = 0;
 return (sigaction(signo, &act, oactp));
}

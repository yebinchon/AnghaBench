
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int SIGINFO ;
 int kill (int ,int) ;
 int nsiginfo ;
 int pid ;

__attribute__((used)) static void
sighand(int sig)
{
 if (sig == SIGALRM) {
  kill(pid, SIGINFO);
 }
 if (sig == SIGINFO) {
  nsiginfo++;
 }
}

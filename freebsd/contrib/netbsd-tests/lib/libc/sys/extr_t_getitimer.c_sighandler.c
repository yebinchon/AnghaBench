
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int SIGVTALRM ;
 int fail ;

__attribute__((used)) static void
sighandler(int signo)
{

 if (signo == SIGALRM || signo == SIGVTALRM)
  fail = 0;
}

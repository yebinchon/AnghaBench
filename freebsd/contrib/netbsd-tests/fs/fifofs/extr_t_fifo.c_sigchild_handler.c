
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ verbose ;

__attribute__((used)) static void
sigchild_handler(int signo)
{
 if (verbose) {
  if (signo == SIGCHLD) {
   printf("Got sigchild\n");
  } else {
   printf("Got %d signal\n", signo);
  }
  fflush(stdout);
 }

}

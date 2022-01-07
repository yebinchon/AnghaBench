
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int _exit (int) ;
 int do_cmd_pid ;
 int exit (int) ;
 int kill (int,int) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void
killchild(int signo)
{
 if (do_cmd_pid > 1) {
  kill(do_cmd_pid, signo ? signo : SIGTERM);
  waitpid(do_cmd_pid, ((void*)0), 0);
 }

 if (signo)
  _exit(1);
 exit(1);
}

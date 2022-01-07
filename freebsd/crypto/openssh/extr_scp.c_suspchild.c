
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int SIGSTOP ;
 int WUNTRACED ;
 int do_cmd_pid ;
 scalar_t__ errno ;
 int getpid () ;
 int kill (int,int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
suspchild(int signo)
{
 int status;

 if (do_cmd_pid > 1) {
  kill(do_cmd_pid, signo);
  while (waitpid(do_cmd_pid, &status, WUNTRACED) == -1 &&
      errno == EINTR)
   ;
  kill(getpid(), SIGSTOP);
 }
}

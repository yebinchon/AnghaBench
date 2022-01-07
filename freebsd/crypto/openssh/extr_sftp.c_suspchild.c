
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int SIGSTOP ;
 int WUNTRACED ;
 scalar_t__ errno ;
 int getpid () ;
 int kill (int,int) ;
 int sshpid ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void
suspchild(int signo)
{
 if (sshpid > 1) {
  kill(sshpid, signo);
  while (waitpid(sshpid, ((void*)0), WUNTRACED) == -1 && errno == EINTR)
   continue;
 }
 kill(getpid(), SIGSTOP);
}

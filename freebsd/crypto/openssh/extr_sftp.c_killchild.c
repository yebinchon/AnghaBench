
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int _exit (int) ;
 int kill (int,int ) ;
 int sshpid ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void
killchild(int signo)
{
 if (sshpid > 1) {
  kill(sshpid, SIGTERM);
  waitpid(sshpid, ((void*)0), 0);
 }

 _exit(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGBUS ;
 int SIGINT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIGUSR2 ;
 int SIG_DFL ;
 int SIG_IGN ;
 int SIG_UNBLOCK ;
 int VGLAbortPending ;
 int VGLEnd () ;
 int getpid () ;
 int kill (int ,int) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int signal (int,int ) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void
VGLAbort(int arg)
{
  sigset_t mask;

  VGLAbortPending = 1;
  signal(SIGINT, SIG_IGN);
  signal(SIGTERM, SIG_IGN);
  signal(SIGUSR2, SIG_IGN);
  if (arg == SIGBUS || arg == SIGSEGV) {
    signal(arg, SIG_DFL);
    sigemptyset(&mask);
    sigaddset(&mask, arg);
    sigprocmask(SIG_UNBLOCK, &mask, ((void*)0));
    VGLEnd();
    kill(getpid(), arg);
  }
}

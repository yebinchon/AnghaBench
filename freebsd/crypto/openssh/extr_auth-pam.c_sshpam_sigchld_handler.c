
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pam_thread; } ;


 scalar_t__ EINTR ;
 int SIGCHLD ;
 scalar_t__ SIGTERM ;
 int SIG_DFL ;
 scalar_t__ WEXITSTATUS (int ) ;
 int WIFEXITED (int ) ;
 scalar_t__ WIFSIGNALED (int ) ;
 int WNOHANG ;
 scalar_t__ WTERMSIG (int ) ;
 TYPE_1__* cleanup_ctxt ;
 scalar_t__ errno ;
 int kill (int ,scalar_t__) ;
 int sigdie (char*) ;
 int signal (int ,int ) ;
 int sshpam_thread_status ;
 int waitpid (int ,int *,int ) ;

__attribute__((used)) static void
sshpam_sigchld_handler(int sig)
{
 signal(SIGCHLD, SIG_DFL);
 if (cleanup_ctxt == ((void*)0))
  return;
 if (waitpid(cleanup_ctxt->pam_thread, &sshpam_thread_status, WNOHANG)
     <= 0) {

  kill(cleanup_ctxt->pam_thread, SIGTERM);
  while (waitpid(cleanup_ctxt->pam_thread,
      &sshpam_thread_status, 0) == -1) {
   if (errno == EINTR)
    continue;
   return;
  }
 }
 if (WIFSIGNALED(sshpam_thread_status) &&
     WTERMSIG(sshpam_thread_status) == SIGTERM)
  return;
 if (!WIFEXITED(sshpam_thread_status))
  sigdie("PAM: authentication thread exited unexpectedly");
 if (WEXITSTATUS(sshpam_thread_status) != 0)
  sigdie("PAM: authentication thread exited uncleanly");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int sigset_t ;
typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int WNOHANG ;
 scalar_t__ child_terminated ;
 int debug (char*) ;
 scalar_t__ errno ;
 int session_close_by_pid (struct ssh*,scalar_t__,int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static void
collect_children(struct ssh *ssh)
{
 pid_t pid;
 sigset_t oset, nset;
 int status;


 sigemptyset(&nset);
 sigaddset(&nset, SIGCHLD);
 sigprocmask(SIG_BLOCK, &nset, &oset);
 if (child_terminated) {
  debug("Received SIGCHLD.");
  while ((pid = waitpid(-1, &status, WNOHANG)) > 0 ||
      (pid < 0 && errno == EINTR))
   if (pid > 0)
    session_close_by_pid(ssh, pid, status);
  child_terminated = 0;
 }
 sigprocmask(SIG_SETMASK, &oset, ((void*)0));
}

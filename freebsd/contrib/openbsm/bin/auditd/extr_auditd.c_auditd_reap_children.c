
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int auditd_log_info (char*,int ,char*,int ) ;
 int waitpid (int,int*,int ) ;

void
auditd_reap_children(void)
{
 pid_t child;
 int wstatus;

 while ((child = waitpid(-1, &wstatus, WNOHANG)) > 0) {
  if (!wstatus)
   continue;
  auditd_log_info("warn process [pid=%d] %s %d.", child,
      ((WIFEXITED(wstatus)) ? "exited with non-zero status" :
      "exited as a result of signal"),
      ((WIFEXITED(wstatus)) ? WEXITSTATUS(wstatus) :
      WTERMSIG(wstatus)));
 }
}

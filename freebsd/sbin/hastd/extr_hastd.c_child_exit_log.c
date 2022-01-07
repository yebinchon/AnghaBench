
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int pjdlog_debug (int,char*,unsigned int) ;
 int pjdlog_error (char*,unsigned int,int) ;

__attribute__((used)) static void
child_exit_log(unsigned int pid, int status)
{

 if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
  pjdlog_debug(1, "Worker process exited gracefully (pid=%u).",
      pid);
 } else if (WIFSIGNALED(status)) {
  pjdlog_error("Worker process killed (pid=%u, signal=%d).",
      pid, WTERMSIG(status));
 } else {
  pjdlog_error("Worker process exited ungracefully (pid=%u, exitcode=%d).",
      pid, WIFEXITED(status) ? WEXITSTATUS(status) : -1);
 }
}

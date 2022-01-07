
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int pjdlog_debug (int,char*,char const*,unsigned int) ;
 int pjdlog_error (char*,char const*,unsigned int,int) ;

__attribute__((used)) static void
child_exit_log(const char *type, unsigned int pid, int status)
{

 if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
  pjdlog_debug(1, "%s process exited gracefully (pid=%u).",
      type, pid);
 } else if (WIFSIGNALED(status)) {
  pjdlog_error("%s process killed (pid=%u, signal=%d).",
      type, pid, WTERMSIG(status));
 } else {
  pjdlog_error("%s process exited ungracefully (pid=%u, exitcode=%d).",
      type, pid, WIFEXITED(status) ? WEXITSTATUS(status) : -1);
 }
}

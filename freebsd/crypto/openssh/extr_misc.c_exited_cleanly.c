
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 int SYSLOG_LEVEL_DEBUG1 ;
 int SYSLOG_LEVEL_INFO ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int do_log2 (int ,char*,char const*,char const*,scalar_t__) ;
 scalar_t__ errno ;
 int error (char*,char const*,char const*,...) ;
 char* strerror (scalar_t__) ;
 int waitpid (int ,int*,int ) ;

int
exited_cleanly(pid_t pid, const char *tag, const char *cmd, int quiet)
{
 int status;

 while (waitpid(pid, &status, 0) == -1) {
  if (errno != EINTR) {
   error("%s: waitpid: %s", tag, strerror(errno));
   return -1;
  }
 }
 if (WIFSIGNALED(status)) {
  error("%s %s exited on signal %d", tag, cmd, WTERMSIG(status));
  return -1;
 } else if (WEXITSTATUS(status) != 0) {
  do_log2(quiet ? SYSLOG_LEVEL_DEBUG1 : SYSLOG_LEVEL_INFO,
      "%s %s failed, status %d", tag, cmd, WEXITSTATUS(status));
  return -1;
 }
 return 0;
}

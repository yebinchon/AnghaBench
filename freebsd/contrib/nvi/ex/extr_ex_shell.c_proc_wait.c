
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int SCR ;


 scalar_t__ EINTR ;
 int FREE_SPACE (int *,char*,int ) ;
 scalar_t__ MIN (size_t,int) ;
 int M_ERR ;
 int M_SYSERR ;
 scalar_t__ SIGPIPE ;
 scalar_t__ WCOREDUMP (int) ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WTERMSIG (int) ;
 scalar_t__ cmdskip (char const) ;
 scalar_t__ errno ;
 char* msg_print (int *,char const*,int*) ;
 int msgq (int *,int ,char*,...) ;
 int sigmsg (scalar_t__) ;
 size_t strlen (char*) ;
 int waitpid (int ,int*,int ) ;

int
proc_wait(SCR *sp, long int pid, const char *cmd, int silent, int okpipe)
{
 size_t len;
 int nf, pstat;
 char *p;


 for (;;) {
  errno = 0;
  if (waitpid((pid_t)pid, &pstat, 0) != -1)
   break;
  if (errno != EINTR) {
   msgq(sp, M_SYSERR, "waitpid");
   return (1);
  }
 }






 if (WIFSIGNALED(pstat) && (!okpipe || WTERMSIG(pstat) != SIGPIPE)) {
  for (; cmdskip(*cmd); ++cmd);
  p = msg_print(sp, cmd, &nf);
  len = strlen(p);
  msgq(sp, M_ERR, "%.*s%s: received signal: %s%s",
      (int)MIN(len, 20), p, len > 20 ? " ..." : "",
      sigmsg(WTERMSIG(pstat)),
      WCOREDUMP(pstat) ? "; core dumped" : "");
  if (nf)
   FREE_SPACE(sp, p, 0);
  return (1);
 }

 if (WIFEXITED(pstat) && WEXITSTATUS(pstat)) {
  if (!silent) {
   for (; cmdskip(*cmd); ++cmd);
   p = msg_print(sp, cmd, &nf);
   len = strlen(p);
   msgq(sp, M_ERR, "%.*s%s: exited with status %d",
       (int)MIN(len, 20), p, len > 20 ? " ..." : "",
       WEXITSTATUS(pstat));
   if (nf)
    FREE_SPACE(sp, p, 0);
  }
  return (1);
 }
 return (0);
}

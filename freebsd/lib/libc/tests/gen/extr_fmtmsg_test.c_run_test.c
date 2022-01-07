
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int pid_t ;


 scalar_t__ EINTR ;
 scalar_t__ MM_OK ;
 int STDERR_FILENO ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 scalar_t__ fmtmsg (long,char const*,int,char const*,char const*,char const*) ;
 int fork () ;
 int free (char*) ;
 char* malloc (size_t) ;
 int * memchr (char*,char,int) ;
 int pipe (int*) ;
 int read (int,char*,int) ;
 char* realloc (char*,size_t) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static char *
run_test(long classification, const char *label, int severity,
    const char *text, const char *action, const char *tag)
{
 int pip[2];
 pid_t pid, wpid;
 char *result, *p;
 size_t resultsize;
 ssize_t n;
 int status;

 if (pipe(pip) == -1)
  err(2, "pipe");
 pid = fork();
 if (pid == -1)
  err(2, "fork");
 if (pid == 0) {
  close(pip[0]);
  if (pip[1] != STDERR_FILENO &&
      dup2(pip[1], STDERR_FILENO) == -1)
   _exit(2);
  if (fmtmsg(classification, label, severity, text, action, tag)
      != MM_OK)
   _exit(1);
  else
   _exit(0);
 }
 close(pip[1]);
 resultsize = 1024;
 result = malloc(resultsize);
 p = result;
 while ((n = read(pip[0], p, result + resultsize - p - 1)) != 0) {
  if (n == -1) {
   if (errno == EINTR)
    continue;
   else
    err(2, "read");
  }
  p += n;
  if (result + resultsize == p - 1) {
   resultsize *= 2;
   result = realloc(result, resultsize);
   if (result == ((void*)0))
    err(2, "realloc");
  }
 }
 if (memchr(result, '\0', p - result) != ((void*)0)) {
  free(result);
  return (((void*)0));
 }
 *p = '\0';
 close(pip[0]);
 while ((wpid = waitpid(pid, &status, 0)) == -1 && errno == EINTR)
  ;
 if (wpid == -1)
  err(2, "waitpid");
 if (status != 0) {
  free(result);
  return (((void*)0));
 }
 return (result);
}

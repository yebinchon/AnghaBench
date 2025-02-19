
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigfunc ;
typedef int shellnam ;
typedef int pid_t ;


 int MAXPATHLEN ;
 int SIGINT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int UPRINTF (char*,char*) ;
 char* _PATH_BSHELL ;
 int altarg ;
 int closefrom (int) ;
 int code ;
 int execl (char const*,char*,char*,...) ;
 int exit (int) ;
 int fork () ;
 int fputs (char const*,int ) ;
 scalar_t__ ftp_debug ;
 char* getenv (char*) ;
 int putc (char,int ) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;
 int ttyout ;
 int wait (int*) ;
 int warn (char*,...) ;
 int xsignal (int ,int ) ;

void
shell(int argc, char *argv[])
{
 pid_t pid;
 sigfunc oldintr;
 char shellnam[MAXPATHLEN];
 const char *shellp, *namep;
 int wait_status;

 if (argc == 0) {
  UPRINTF("usage: %s [command [args]]\n", argv[0]);
  code = -1;
  return;
 }
 oldintr = xsignal(SIGINT, SIG_IGN);
 if ((pid = fork()) == 0) {
  (void)closefrom(3);
  (void)xsignal(SIGINT, SIG_DFL);
  shellp = getenv("SHELL");
  if (shellp == ((void*)0))
   shellp = _PATH_BSHELL;
  namep = strrchr(shellp, '/');
  if (namep == ((void*)0))
   namep = shellp;
  else
   namep++;
  (void)strlcpy(shellnam, namep, sizeof(shellnam));
  if (ftp_debug) {
   fputs(shellp, ttyout);
   putc('\n', ttyout);
  }
  if (argc > 1) {
   execl(shellp, shellnam, "-c", altarg, (char *)0);
  }
  else {
   execl(shellp, shellnam, (char *)0);
  }
  warn("Can't execute `%s'", shellp);
  code = -1;
  exit(1);
 }
 if (pid > 0)
  while (wait(&wait_status) != pid)
   ;
 (void)xsignal(SIGINT, oldintr);
 if (pid == -1) {
  warn("Can't fork a subshell; try again later");
  code = -1;
 } else
  code = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 char* _PATH_BSHELL ;
 int _exit (int) ;
 int debug3 (char*,char*,...) ;
 scalar_t__ errno ;
 int error (char*,...) ;
 int execl (char*,char*,char*,...) ;
 int fatal (char*,char*) ;
 int fork () ;
 int fprintf (int ,char*,char*,char*) ;
 char* getenv (char*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
local_do_shell(const char *args)
{
 int status;
 char *shell;
 pid_t pid;

 if (!*args)
  args = ((void*)0);

 if ((shell = getenv("SHELL")) == ((void*)0) || *shell == '\0')
  shell = _PATH_BSHELL;

 if ((pid = fork()) == -1)
  fatal("Couldn't fork: %s", strerror(errno));

 if (pid == 0) {

  if (args) {
   debug3("Executing %s -c \"%s\"", shell, args);
   execl(shell, shell, "-c", args, (char *)((void*)0));
  } else {
   debug3("Executing %s", shell);
   execl(shell, shell, (char *)((void*)0));
  }
  fprintf(stderr, "Couldn't execute \"%s\": %s\n", shell,
      strerror(errno));
  _exit(1);
 }
 while (waitpid(pid, &status, 0) == -1)
  if (errno != EINTR)
   fatal("Couldn't wait for child: %s", strerror(errno));
 if (!WIFEXITED(status))
  error("Shell exited abnormally");
 else if (WEXITSTATUS(status))
  error("Shell exited with status %d", WEXITSTATUS(status));
}

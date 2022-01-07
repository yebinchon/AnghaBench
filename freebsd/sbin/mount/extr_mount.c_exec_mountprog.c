
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ENOENT ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 size_t WTERMSIG (int) ;
 int _PATH_SYSPATH ;
 int errno ;
 int execvP (char const*,int ,char* const*) ;
 int exit (int) ;
 int fork () ;
 int * sys_siglist ;
 int waitpid (int ,int*,int ) ;
 int warn (char*,...) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
exec_mountprog(const char *name, const char *execname, char *const argv[])
{
 pid_t pid;
 int status;

 switch (pid = fork()) {
 case -1:
  warn("fork");
  exit (1);
 case 0:

  execvP(execname, _PATH_SYSPATH, argv);
  if (errno == ENOENT) {
   warn("exec %s not found", execname);
   if (execname[0] != '/') {
    warnx("in path: %s", _PATH_SYSPATH);
   }
  }
  exit(1);
 default:
  if (waitpid(pid, &status, 0) < 0) {
   warn("waitpid");
   return (1);
  }

  if (WIFEXITED(status)) {
   if (WEXITSTATUS(status) != 0)
    return (WEXITSTATUS(status));
  } else if (WIFSIGNALED(status)) {
   warnx("%s: %s", name, sys_siglist[WTERMSIG(status)]);
   return (1);
  }
  break;
 }

 return (0);
}

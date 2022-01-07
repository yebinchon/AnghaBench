
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int term ;
typedef int sigset_t ;
struct TYPE_3__ {int se_device; int * se_window_argv; int se_type; } ;
typedef TYPE_1__ session_t ;
typedef int pid_t ;


 int RESOURCE_WINDOW ;
 int SIG_SETMASK ;
 int _exit (int) ;
 int emergency (char*,...) ;
 int execve (int ,int *,char**) ;
 int fork () ;
 int setprocresources (int ) ;
 scalar_t__ setsid () ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stall (char*,int ,int ) ;
 int strcpy (char*,char*) ;
 int strlcat (char*,int ,int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
start_window_system(session_t *sp)
{
 pid_t pid;
 sigset_t mask;
 char term[64], *env[2];
 int status;

 if ((pid = fork()) == -1) {
  emergency("can't fork for window system on port %s: %m",
      sp->se_device);

  return;
 }
 if (pid) {
  waitpid(-1, &status, 0);
  return;
 }


 if ((pid = fork()) == -1) {
  emergency("can't fork for window system on port %s: %m",
      sp->se_device);
  _exit(1);
 }
 if (pid)
  _exit(0);

 sigemptyset(&mask);
 sigprocmask(SIG_SETMASK, &mask, ((void*)0));

 if (setsid() < 0)
  emergency("setsid failed (window) %m");




 if (sp->se_type) {

  strcpy(term, "TERM=");
  strlcat(term, sp->se_type, sizeof(term));
  env[0] = term;
  env[1] = ((void*)0);
 }
 else
  env[0] = ((void*)0);
 execve(sp->se_window_argv[0], sp->se_window_argv, env);
 stall("can't exec window system '%s' for port %s: %m",
  sp->se_window_argv[0], sp->se_device);
 _exit(1);
}

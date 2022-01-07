
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int term ;
typedef int sigset_t ;
struct TYPE_4__ {scalar_t__ se_started; scalar_t__ se_nspace; int se_device; int * se_getty_argv; int se_type; scalar_t__ se_window; } ;
typedef TYPE_1__ session_t ;
typedef int pid_t ;


 scalar_t__ GETTY_NSPACE ;
 scalar_t__ GETTY_SLEEP ;
 scalar_t__ GETTY_SPACING ;
 int RESOURCE_GETTY ;
 int SIG_SETMASK ;
 unsigned int WINDOW_WAIT ;
 int _exit (int) ;
 int emergency (char*,int ) ;
 int execve (int ,int *,char**) ;
 int fork () ;
 int setprocresources (int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sleep (unsigned int) ;
 int stall (char*,int ,int ) ;
 int start_window_system (TYPE_1__*) ;
 int strcpy (char*,char*) ;
 int strlcat (char*,int ,int) ;
 scalar_t__ time (scalar_t__*) ;
 int warning (char*,int ,scalar_t__) ;

__attribute__((used)) static pid_t
start_getty(session_t *sp)
{
 pid_t pid;
 sigset_t mask;
 time_t current_time = time((time_t *) 0);
 int too_quick = 0;
 char term[64], *env[2];

 if (current_time >= sp->se_started &&
     current_time - sp->se_started < GETTY_SPACING) {
  if (++sp->se_nspace > GETTY_NSPACE) {
   sp->se_nspace = 0;
   too_quick = 1;
  }
 } else
  sp->se_nspace = 0;




 if ((pid = fork()) == -1) {
  emergency("can't fork for getty on port %s: %m", sp->se_device);
  return -1;
 }

 if (pid)
  return pid;

 if (too_quick) {
  warning("getty repeating too quickly on port %s, sleeping %d secs",
      sp->se_device, GETTY_SLEEP);
  sleep((unsigned) GETTY_SLEEP);
 }

 if (sp->se_window) {
  start_window_system(sp);
  sleep(WINDOW_WAIT);
 }

 sigemptyset(&mask);
 sigprocmask(SIG_SETMASK, &mask, ((void*)0));




 if (sp->se_type) {

  strcpy(term, "TERM=");
  strlcat(term, sp->se_type, sizeof(term));
  env[0] = term;
  env[1] = ((void*)0);
 } else
  env[0] = ((void*)0);
 execve(sp->se_getty_argv[0], sp->se_getty_argv, env);
 stall("can't exec getty '%s' for port %s: %m",
  sp->se_getty_argv[0], sp->se_device);
 _exit(1);
}

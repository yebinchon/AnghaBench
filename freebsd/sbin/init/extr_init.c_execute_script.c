
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sa ;


 scalar_t__ EACCES ;
 int RESOURCE_RC ;
 int SIGHUP ;
 int SIGTSTP ;
 int SIG_IGN ;
 int SIG_SETMASK ;
 int X_OK ;
 int access (char const*,int ) ;
 int bzero (struct sigaction*,int) ;
 scalar_t__ errno ;
 int execv (char const*,char**) ;
 char* get_shell () ;
 int open_console () ;
 int setprocresources (int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stall (char*,char const*,char const*) ;
 int warning (char*,char const*) ;

__attribute__((used)) static void
execute_script(char *argv[])
{
 struct sigaction sa;
 const char *shell, *script;
 int error;

 bzero(&sa, sizeof(sa));
 sigemptyset(&sa.sa_mask);
 sa.sa_handler = SIG_IGN;
 sigaction(SIGTSTP, &sa, ((void*)0));
 sigaction(SIGHUP, &sa, ((void*)0));

 open_console();

 sigprocmask(SIG_SETMASK, &sa.sa_mask, ((void*)0));
 script = argv[1];
 error = access(script, X_OK);
 if (error == 0) {
  execv(script, argv + 1);
  warning("can't directly exec %s: %m", script);
 } else if (errno != EACCES) {
  warning("can't access %s: %m", script);
 }

 shell = get_shell();
 execv(shell, argv);
 stall("can't exec %s for %s: %m", shell, script);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_func_t ;
typedef int pid_t ;


 int DEATH_WATCH ;
 scalar_t__ ECHILD ;
 scalar_t__ ESRCH ;


 int _PATH_CONSOLE ;
 int alarm (int ) ;
 scalar_t__ clang ;
 int collect_child (int) ;
 scalar_t__ errno ;
 int kill (int,int const) ;
 int revoke (int ) ;
 int single_user ;
 int waitpid (int,int*,int ) ;
 int warning (char*) ;

__attribute__((used)) static state_func_t
death_single(void)
{
 int i;
 pid_t pid;
 static const int death_sigs[2] = { 128, 129 };

 revoke(_PATH_CONSOLE);

 for (i = 0; i < 2; ++i) {
  if (kill(-1, death_sigs[i]) == -1 && errno == ESRCH)
   return (state_func_t) single_user;

  clang = 0;
  alarm(DEATH_WATCH);
  do
   if ((pid = waitpid(-1, (int *)0, 0)) != -1)
    collect_child(pid);
  while (clang == 0 && errno != ECHILD);

  if (errno == ECHILD)
   return (state_func_t) single_user;
 }

 warning("some processes would not die; ps axl advised");

 return (state_func_t) single_user;
}

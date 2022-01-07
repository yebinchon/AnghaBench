
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_handler; int sa_flags; } ;
typedef TYPE_1__* posix_spawnattr_t ;
struct TYPE_3__ {int sa_flags; int sa_sigdefault; int sa_sigmask; int sa_schedparam; int sa_schedpolicy; int sa_pgroup; } ;


 int POSIX_SPAWN_RESETIDS ;
 int POSIX_SPAWN_SETPGROUP ;
 int POSIX_SPAWN_SETSCHEDPARAM ;
 int POSIX_SPAWN_SETSCHEDULER ;
 int POSIX_SPAWN_SETSIGDEF ;
 int POSIX_SPAWN_SETSIGMASK ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int _SIG_MAXSIG ;
 scalar_t__ __sys_sigaction (int,struct sigaction*,int *) ;
 int __sys_sigprocmask (int ,int *,int *) ;
 int errno ;
 int getgid () ;
 int getuid () ;
 scalar_t__ sched_setparam (int ,int *) ;
 scalar_t__ sched_setscheduler (int ,int ,int *) ;
 scalar_t__ setegid (int ) ;
 scalar_t__ seteuid (int ) ;
 scalar_t__ setpgid (int ,int ) ;
 scalar_t__ sigismember (int *,int) ;

__attribute__((used)) static int
process_spawnattr(const posix_spawnattr_t sa)
{
 struct sigaction sigact = { .sa_flags = 0, .sa_handler = SIG_DFL };
 int i;
 if (sa->sa_flags & POSIX_SPAWN_SETPGROUP) {
  if (setpgid(0, sa->sa_pgroup) != 0)
   return (errno);
 }


 if (sa->sa_flags & POSIX_SPAWN_SETSCHEDULER) {
  if (sched_setscheduler(0, sa->sa_schedpolicy,
      &sa->sa_schedparam) != 0)
   return (errno);
 } else if (sa->sa_flags & POSIX_SPAWN_SETSCHEDPARAM) {
  if (sched_setparam(0, &sa->sa_schedparam) != 0)
   return (errno);
 }


 if (sa->sa_flags & POSIX_SPAWN_RESETIDS) {
  if (setegid(getgid()) != 0)
   return (errno);
  if (seteuid(getuid()) != 0)
   return (errno);
 }





 if (sa->sa_flags & POSIX_SPAWN_SETSIGMASK) {
  __sys_sigprocmask(SIG_SETMASK, &sa->sa_sigmask, ((void*)0));
 }

 if (sa->sa_flags & POSIX_SPAWN_SETSIGDEF) {
  for (i = 1; i <= _SIG_MAXSIG; i++) {
   if (sigismember(&sa->sa_sigdefault, i))
    if (__sys_sigaction(i, &sigact, ((void*)0)) != 0)
     return (errno);
  }
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
struct rusage {int dummy; } ;
typedef int sigset_t ;
typedef int pid_t ;
typedef int ign ;


 scalar_t__ EINTR ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_BLOCK ;
 int SIG_IGN ;
 int SIG_SETMASK ;
 int _PATH_BSHELL ;
 int __libc_sigaction (int ,struct sigaction*,struct sigaction*) ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int __sys_sigprocmask (int ,int *,int *) ;
 int _exit (int) ;
 int _wait4 (int,int*,int ,struct rusage*) ;
 scalar_t__ errno ;
 int execl (int ,char*,char*,char const*,char*) ;
 int memset (struct sigaction*,int ,int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int vfork () ;

int
__libc_system(const char *command)
{
 pid_t pid, savedpid;
 int pstat;
 struct sigaction ign, intact, quitact;
 sigset_t newsigblock, oldsigblock;

 if (!command)
  return(1);

 (void)sigemptyset(&newsigblock);
 (void)sigaddset(&newsigblock, SIGCHLD);
 (void)sigaddset(&newsigblock, SIGINT);
 (void)sigaddset(&newsigblock, SIGQUIT);
 (void)__libc_sigprocmask(SIG_BLOCK, &newsigblock, &oldsigblock);
 switch(pid = vfork()) {




 case -1:
  (void)__libc_sigprocmask(SIG_SETMASK, &oldsigblock, ((void*)0));
  return (-1);
 case 0:



  (void)__sys_sigprocmask(SIG_SETMASK, &oldsigblock, ((void*)0));
  execl(_PATH_BSHELL, "sh", "-c", command, (char *)((void*)0));
  _exit(127);
 }






 memset(&ign, 0, sizeof(ign));
 ign.sa_handler = SIG_IGN;
 (void)sigemptyset(&ign.sa_mask);
 (void)__libc_sigaction(SIGINT, &ign, &intact);
 (void)__libc_sigaction(SIGQUIT, &ign, &quitact);
 savedpid = pid;
 do {
  pid = _wait4(savedpid, &pstat, 0, (struct rusage *)0);
 } while (pid == -1 && errno == EINTR);
 (void)__libc_sigaction(SIGINT, &intact, ((void*)0));
 (void)__libc_sigaction(SIGQUIT, &quitact, ((void*)0));
 (void)__libc_sigprocmask(SIG_SETMASK, &oldsigblock, ((void*)0));
 return (pid == -1 ? -1 : pstat);
}

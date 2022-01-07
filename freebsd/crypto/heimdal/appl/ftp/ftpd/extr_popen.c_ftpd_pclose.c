
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef scalar_t__ pid_t ;
typedef int FILE ;


 scalar_t__ EINTR ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 scalar_t__* pids ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
ftpd_pclose(FILE *iop)
{
 int fdes, status;
 pid_t pid;
 sigset_t sigset, osigset;





 if (pids == 0 || pids[fdes = fileno(iop)] == 0)
  return (-1);
 fclose(iop);
 sigemptyset(&sigset);
 sigaddset(&sigset, SIGINT);
 sigaddset(&sigset, SIGQUIT);
 sigaddset(&sigset, SIGHUP);
 sigprocmask(SIG_BLOCK, &sigset, &osigset);
 while ((pid = waitpid(pids[fdes], &status, 0)) < 0 && errno == EINTR)
  continue;
 sigprocmask(SIG_SETMASK, &osigset, ((void*)0));
 pids[fdes] = 0;
 if (pid < 0)
  return (pid);
 if (WIFEXITED(status))
  return (WEXITSTATUS(status));
 return (1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int FILE ;


 scalar_t__ EINTR ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 scalar_t__* pids ;
 int sigblock (int) ;
 int sigmask (int ) ;
 int sigsetmask (int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
ftpd_pclose(FILE *iop)
{
 int fdes, omask, status;
 pid_t pid;





 if (pids == ((void*)0) || pids[fdes = fileno(iop)] == 0)
  return (-1);
 (void)fclose(iop);
 omask = sigblock(sigmask(SIGINT)|sigmask(SIGQUIT)|sigmask(SIGHUP));
 while ((pid = waitpid(pids[fdes], &status, 0)) < 0 && errno == EINTR)
  continue;
 (void)sigsetmask(omask);
 pids[fdes] = 0;
 if (pid < 0)
  return (pid);
 if (WIFEXITED(status))
  return (WEXITSTATUS(status));
 return (1);
}

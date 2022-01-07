
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffstestargs {int pta_childpid; } ;
typedef int atf_tc_t ;


 int SIGCHLD ;
 int SIGKILL ;
 int SIGTERM ;
 int SIG_IGN ;
 int WNOHANG ;
 int kill (int ,int ) ;
 int rmdir (char*) ;
 int rump_sys_rmdir (char const*) ;
 int rump_sys_unmount (char const*,int) ;
 int signal (int ,int ) ;
 struct puffstestargs* theargs ;
 int usleep (int) ;
 int wait (int*) ;
 scalar_t__ waitpid (int ,int*,int ) ;

int
puffs_fstest_unmount(const atf_tc_t *tc, const char *path, int flags)
{
 struct puffstestargs *pargs = theargs;
 int status;
 int rv;


 signal(SIGCHLD, SIG_IGN);

 rv = rump_sys_unmount(path, flags);
 if (rv)
  return rv;

 if ((rv = rump_sys_rmdir(path)) != 0)
  return rv;

 if (waitpid(pargs->pta_childpid, &status, WNOHANG) > 0)
  return 0;
 kill(pargs->pta_childpid, SIGTERM);
 usleep(10);
 if (waitpid(pargs->pta_childpid, &status, WNOHANG) > 0)
  return 0;
 kill(pargs->pta_childpid, SIGKILL);
 usleep(500);
 wait(&status);

 rmdir("p2kffsfake");

 return 0;
}

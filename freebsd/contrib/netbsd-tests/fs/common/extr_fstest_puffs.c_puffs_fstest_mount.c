
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffstestargs {int pta_rumpfd; int pta_childpid; int pta_pargslen; int pta_pargs; } ;
typedef int atf_tc_t ;


 int MOUNT_PUFFS ;
 int O_RDWR ;
 int SIGKILL ;
 int kill (int ,int ) ;
 int rump_init () ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int,int ,int ) ;
 int rump_sys_open (char*,int ) ;
 int rumpshovels (struct puffstestargs*) ;

int
puffs_fstest_mount(const atf_tc_t *tc, void *arg, const char *path, int flags)
{
 struct puffstestargs *pargs = arg;
 int fd;

 rump_init();
 fd = rump_sys_open("/dev/puffs", O_RDWR);
 if (fd == -1)
  return fd;

 if (rump_sys_mkdir(path, 0777) == -1)
  return -1;

 if (rump_sys_mount(MOUNT_PUFFS, path, flags,
     pargs->pta_pargs, pargs->pta_pargslen) == -1) {

  kill(pargs->pta_childpid, SIGKILL);
  return -1;
 }

 pargs->pta_rumpfd = fd;
 rumpshovels(pargs);

 return 0;
}

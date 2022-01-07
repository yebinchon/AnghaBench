
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int atf_tc_t ;


 scalar_t__ FSTYPE_MSDOS (int const*) ;
 scalar_t__ FSTYPE_RUMPFS (int const*) ;
 scalar_t__ FSTYPE_SYSVBFS (int const*) ;
 int RL (int ) ;
 int RUMP_RFCFDG ;
 int RZ (int ) ;
 int abort () ;
 int atf_tc_expect_signal (int,char*) ;
 int atf_tc_skip (char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int quittingtime ;
 int rump_pub_lwproc_rfork (int ) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_getpid () ;
 int sleep (int) ;
 int w1_dirs ;
 int w2 ;
 int wrkpid ;

__attribute__((used)) static void
renamerace_dirs(const atf_tc_t *tc, const char *mp)
{
 pthread_t pt1, pt2;

 if (FSTYPE_SYSVBFS(tc))
  atf_tc_skip("directories not supported by file system");

 if (FSTYPE_RUMPFS(tc))
  atf_tc_skip("rename not supported by file system");


 if (FSTYPE_MSDOS(tc))
  atf_tc_expect_signal(-1, "PR kern/43626");

 RZ(rump_pub_lwproc_rfork(RUMP_RFCFDG));
 RL(wrkpid = rump_sys_getpid());

 RL(rump_sys_chdir(mp));
 pthread_create(&pt1, ((void*)0), w1_dirs, ((void*)0));
 pthread_create(&pt2, ((void*)0), w2, ((void*)0));

 sleep(5);
 quittingtime = 1;

 pthread_join(pt1, ((void*)0));
 pthread_join(pt2, ((void*)0));
 RL(rump_sys_chdir("/"));





 if (FSTYPE_MSDOS(tc))
  abort();
}

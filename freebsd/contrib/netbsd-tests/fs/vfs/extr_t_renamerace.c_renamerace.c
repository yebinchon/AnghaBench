
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int atf_tc_t ;


 scalar_t__ FSTYPE_MSDOS (int const*) ;
 scalar_t__ FSTYPE_RUMPFS (int const*) ;
 scalar_t__ FSTYPE_SYSVBFS (int const*) ;
 scalar_t__ FSTYPE_UDF (int const*) ;
 int NWRK ;
 int RL (int ) ;
 int RUMP_RFCFDG ;
 int RZ (int ) ;
 int atf_tc_expect_fail (char*) ;
 int atf_tc_fail (char*) ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ msdosfs_fstest_unmount (int const*,char const*,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int quittingtime ;
 int rump_pub_lwproc_rfork (int ) ;
 int rump_pub_vfs_mount_print (char const*,int) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_getpid () ;
 int sleep (int) ;
 int w1 ;
 int w2 ;
 int wrkpid ;

__attribute__((used)) static void
renamerace(const atf_tc_t *tc, const char *mp)
{
 pthread_t pt1[NWRK], pt2[NWRK];
 int i;





 if (FSTYPE_SYSVBFS(tc))
  atf_tc_skip("filesystem has not enough inodes");
 if (FSTYPE_RUMPFS(tc))
  atf_tc_skip("rename not supported by file system");
 if (FSTYPE_UDF(tc))
  atf_tc_expect_fail("PR kern/49046");

 RZ(rump_pub_lwproc_rfork(RUMP_RFCFDG));
 RL(wrkpid = rump_sys_getpid());

 RL(rump_sys_chdir(mp));
 for (i = 0; i < NWRK; i++)
  pthread_create(&pt1[i], ((void*)0), w1, ((void*)0));

 for (i = 0; i < NWRK; i++)
  pthread_create(&pt2[i], ((void*)0), w2, ((void*)0));

 sleep(5);
 quittingtime = 1;

 for (i = 0; i < NWRK; i++)
  pthread_join(pt1[i], ((void*)0));
 for (i = 0; i < NWRK; i++)
  pthread_join(pt2[i], ((void*)0));
 RL(rump_sys_chdir("/"));

 if (FSTYPE_UDF(tc))
  atf_tc_fail("race did not trigger this time");

 if (FSTYPE_MSDOS(tc)) {
  atf_tc_expect_fail("PR kern/43626");




  if (msdosfs_fstest_unmount(tc, mp, 0) != 0) {
   rump_pub_vfs_mount_print(mp, 1);
   atf_tc_fail_errno("unmount failed");
  }
  atf_tc_fail("race did not trigger this time");
 }
}

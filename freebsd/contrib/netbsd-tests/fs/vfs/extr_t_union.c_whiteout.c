
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_ERRNO (int ,int) ;
 int ENOENT ;
 int ENOTEMPTY ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int MAXPATHLEN ;
 int MNT_RDONLY ;
 int RL (int) ;
 int TDFILE ;
 int TDIR ;
 int ffs_fstest_mount (int const*,void*,char*,int ) ;
 int ffs_fstest_newfs (int const*,void**,char*,int,int *) ;
 int ffs_fstest_unmount (int const*,char*,int ) ;
 int mountunion (char const*,char*) ;
 int rump_sys_chdir (char*) ;
 int rump_sys_mkdir (int ,int) ;
 int rump_sys_rmdir (int ) ;
 int rump_sys_stat (int ,struct stat*) ;
 int rump_sys_unmount (char const*,int ) ;

__attribute__((used)) static void
whiteout(const atf_tc_t *tc, const char *mp)
{
 char lower[MAXPATHLEN];
 struct stat sb;
 void *fsarg;





 RL(ffs_fstest_newfs(tc, &fsarg, "daimage", 1024*1024*5, ((void*)0)));
 RL(ffs_fstest_mount(tc, fsarg, "/lower", 0));


 RL(rump_sys_chdir("/lower"));
 RL(rump_sys_mkdir(TDIR, 0777));
 RL(rump_sys_mkdir(TDFILE, 0777));
 RL(rump_sys_chdir("/"));

 RL(ffs_fstest_unmount(tc, "/lower", 0));
 RL(ffs_fstest_mount(tc, fsarg, "/lower", MNT_RDONLY));

 mountunion(mp, lower);

 FSTEST_ENTER();
 ATF_REQUIRE_ERRNO(ENOTEMPTY, rump_sys_rmdir(TDIR) == -1);
 RL(rump_sys_rmdir(TDFILE));
 RL(rump_sys_rmdir(TDIR));
 ATF_REQUIRE_ERRNO(ENOENT, rump_sys_stat(TDFILE, &sb) == -1);
 ATF_REQUIRE_ERRNO(ENOENT, rump_sys_stat(TDIR, &sb) == -1);

 RL(rump_sys_mkdir(TDIR, 0777));
 RL(rump_sys_stat(TDIR, &sb));
 ATF_REQUIRE_ERRNO(ENOENT, rump_sys_stat(TDFILE, &sb) == -1);
 FSTEST_EXIT();

 RL(rump_sys_unmount(mp, 0));
}

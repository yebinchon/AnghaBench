
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct stat {int dummy; } ;
typedef int atf_tc_t ;


 int AFILE ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EROFS ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int FSTYPE_MSDOS (int const*) ;
 int O_RDONLY ;
 int RL (int) ;
 int rump_sys_chmod (int ,int) ;
 int rump_sys_chown (int ,int,int) ;
 int rump_sys_close (int) ;
 int rump_sys_fchmod (int,int) ;
 int rump_sys_fchown (int,int,int) ;
 int rump_sys_futimes (int,struct timeval*) ;
 int rump_sys_open (int ,int ) ;
 int rump_sys_stat (int ,struct stat*) ;
 int rump_sys_utimes (int ,struct timeval*) ;

__attribute__((used)) static void
attrs(const atf_tc_t *tc, const char *mp)
{
 struct timeval sometvs[2];
 struct stat sb;
 int fd;

 FSTEST_ENTER();

 RL(rump_sys_stat(AFILE, &sb));

 ATF_REQUIRE_ERRNO(EROFS, rump_sys_chmod(AFILE, 0775) == -1);
 if (!FSTYPE_MSDOS(tc))
  ATF_REQUIRE_ERRNO(EROFS, rump_sys_chown(AFILE, 1, 1) == -1);
 ATF_REQUIRE_ERRNO(EROFS, rump_sys_utimes(AFILE, sometvs) == -1);

 RL(fd = rump_sys_open(AFILE, O_RDONLY));
 ATF_REQUIRE_ERRNO(EROFS, rump_sys_fchmod(fd, 0775) == -1);
 if (!FSTYPE_MSDOS(tc))
  ATF_REQUIRE_ERRNO(EROFS, rump_sys_fchown(fd, 1, 1) == -1);
 ATF_REQUIRE_ERRNO(EROFS, rump_sys_futimes(fd, sometvs) == -1);
 RL(rump_sys_close(fd));

 FSTEST_EXIT();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int AFILE ;
 int ATF_REQUIRE_EQ (int ,int) ;
 int ATF_REQUIRE_ERRNO (int,int) ;
 int ATF_REQUIRE_STREQ (char*,int ) ;
 int EACCES ;
 int EROFS ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 scalar_t__ FSTYPE_NFSRO (int const*) ;
 int FUNSIZE ;
 int FUNTEXT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int RL (int) ;
 int rump_sys_close (int) ;
 int rump_sys_open (int ,int ) ;
 int rump_sys_read (int,char*,int) ;

__attribute__((used)) static void
fileio(const atf_tc_t *tc, const char *mp)
{
 int fd;
 char buf[FUNSIZE+1];
 int expected;

 if (FSTYPE_NFSRO(tc))
  expected = EACCES;
 else
  expected = EROFS;

 FSTEST_ENTER();
 RL(fd = rump_sys_open(AFILE, O_RDONLY));
 ATF_REQUIRE_EQ(rump_sys_read(fd, buf, FUNSIZE), FUNSIZE);
 buf[FUNSIZE] = '\0';
 ATF_REQUIRE_STREQ(buf, FUNTEXT);
 RL(rump_sys_close(fd));

 ATF_REQUIRE_ERRNO(expected, rump_sys_open(AFILE, O_WRONLY) == -1);
 ATF_REQUIRE_ERRNO(expected, rump_sys_open(AFILE, O_RDWR) == -1);
 FSTEST_EXIT();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_EQ (int ,int) ;
 int ATF_REQUIRE_STREQ (char*,int ) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int RL (int) ;
 int TESTSTR ;
 int TESTSZ ;
 int rump_sys_close (int) ;
 int rump_sys_fstat (int,struct stat*) ;
 int rump_sys_ftruncate (int,int) ;
 int rump_sys_open (char*,int) ;
 int rump_sys_pread (int,char*,int,int) ;
 int rump_sys_write (int,int ,int) ;

__attribute__((used)) static void
extendbody(const atf_tc_t *tc, off_t seekcnt)
{
 char buf[TESTSZ+1];
 struct stat sb;
 int fd;

 FSTEST_ENTER();
 RL(fd = rump_sys_open("testfile",
     O_CREAT | O_RDWR | (seekcnt ? O_APPEND : 0)));
 RL(rump_sys_ftruncate(fd, seekcnt));
 RL(rump_sys_fstat(fd, &sb));
 ATF_REQUIRE_EQ(sb.st_size, seekcnt);

 ATF_REQUIRE_EQ(rump_sys_write(fd, TESTSTR, TESTSZ), TESTSZ);
 ATF_REQUIRE_EQ(rump_sys_pread(fd, buf, TESTSZ, seekcnt), TESTSZ);
 ATF_REQUIRE_STREQ(buf, TESTSTR);

 RL(rump_sys_fstat(fd, &sb));
 ATF_REQUIRE_EQ(sb.st_size, (off_t)TESTSZ + seekcnt);
 RL(rump_sys_close(fd));
 FSTEST_EXIT();
}

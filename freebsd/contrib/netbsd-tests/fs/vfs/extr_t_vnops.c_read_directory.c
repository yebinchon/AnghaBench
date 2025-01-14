
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;
typedef int atf_tc_t ;


 int ATF_CHECK (int) ;
 int ATF_REQUIRE (int) ;
 scalar_t__ EISDIR ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 scalar_t__ errno ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_pread (int,char*,int,int ) ;
 int rump_sys_read (int,char*,int) ;

__attribute__((used)) static void
read_directory(const atf_tc_t *tc, const char *mp)
{
 char buf[1024];
 int fd, res;
 ssize_t size;

 FSTEST_ENTER();
 fd = rump_sys_open(".", O_DIRECTORY | O_RDONLY, 0777);
 ATF_REQUIRE(fd != -1);

 size = rump_sys_pread(fd, buf, sizeof(buf), 0);
 ATF_CHECK(size != -1 || errno == EISDIR);
 size = rump_sys_read(fd, buf, sizeof(buf));
 ATF_CHECK(size != -1 || errno == EISDIR);

 res = rump_sys_close(fd);
 ATF_REQUIRE(res != -1);
 FSTEST_EXIT();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int ATF_REQUIRE_EQ (int ,int) ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EBUSY ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDWR ;
 int RL (int) ;
 int TBSIZE ;
 int memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,...) ;
 int rump_sys_read (int,char*,int) ;
 int rump_sys_unlink (char*) ;
 int rump_sys_unmount (char const*,int ) ;
 int rump_sys_write (int,char*,int) ;

__attribute__((used)) static void
read_after_unlink(const atf_tc_t *tc, const char *mp)
{
 char buf[TBSIZE], buf2[TBSIZE];
 int fd;

 FSTEST_ENTER();


 RL(fd = rump_sys_open("file", O_RDWR|O_CREAT, 0666));
 memset(buf, 'D', TBSIZE);
 ATF_REQUIRE_EQ(rump_sys_write(fd, buf, TBSIZE), TBSIZE);
 rump_sys_close(fd);


 ATF_REQUIRE_ERRNO(EBUSY, rump_sys_unmount(mp, 0) == -1);

 RL(fd = rump_sys_open("file", O_RDWR));
 RL(rump_sys_unlink("file"));

 ATF_REQUIRE_EQ(rump_sys_read(fd, buf2, TBSIZE), TBSIZE);
 ATF_REQUIRE_EQ(memcmp(buf, buf2, TBSIZE), 0);
 rump_sys_close(fd);

 FSTEST_EXIT();
}

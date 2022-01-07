
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int v2 ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_EQ (int,int) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDWR ;
 int RL (int) ;
 int rump_sys_close (int) ;
 int rump_sys_fsync (int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_pread (int,int*,int,int) ;
 int rump_sys_pwrite (int,int*,int,int) ;
 int rump_sys_unlink (char*) ;

__attribute__((used)) static void
wrrd_after_unlink(const atf_tc_t *tc, const char *mp)
{
 int value = 0x11;
 int v2;
 int fd;

 FSTEST_ENTER();

 RL(fd = rump_sys_open("file", O_RDWR|O_CREAT, 0666));
 RL(rump_sys_unlink("file"));

 RL(rump_sys_pwrite(fd, &value, sizeof(value), 654321));





 RL(rump_sys_fsync(fd));
 RL(rump_sys_pread(fd, &v2, sizeof(v2), 654321));
 rump_sys_close(fd);

 ATF_REQUIRE_EQ(value, v2);
 FSTEST_EXIT();
}

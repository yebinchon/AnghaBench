
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int ATF_REQUIRE_EQ (int ,int) ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EFAULT ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_RSYNC ;
 int O_SYNC ;
 int RL (int) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,...) ;
 int rump_sys_read (int,int *,int) ;
 int rump_sys_write (int,char*,int) ;

__attribute__((used)) static void
read_fault(const atf_tc_t *tc, const char *mp)
{
 char ch = 123;
 int fd;

 FSTEST_ENTER();
 RL(fd = rump_sys_open("file", O_CREAT | O_RDWR, 0777));
 ATF_REQUIRE_EQ(rump_sys_write(fd, &ch, 1), 1);
 RL(rump_sys_close(fd));
 RL(fd = rump_sys_open("file", O_RDONLY | O_SYNC | O_RSYNC));
 ATF_REQUIRE_ERRNO(EFAULT, rump_sys_read(fd, ((void*)0), 1) == -1);
 RL(rump_sys_close(fd));
 FSTEST_EXIT();
}

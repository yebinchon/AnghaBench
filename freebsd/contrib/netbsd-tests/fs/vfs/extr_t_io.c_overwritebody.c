
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDWR ;
 int REQUIRE_LIBC (char*,int *) ;
 int RL (int) ;
 char* malloc (int ) ;
 int rump_sys_close (int) ;
 int rump_sys_ftruncate (int,int ) ;
 int rump_sys_open (char*,int,...) ;
 int rump_sys_write (int,char*,int ) ;

__attribute__((used)) static void
overwritebody(const atf_tc_t *tc, off_t count, bool dotrunc)
{
 char *buf;
 int fd;

 REQUIRE_LIBC(buf = malloc(count), ((void*)0));
 FSTEST_ENTER();
 RL(fd = rump_sys_open("testi", O_CREAT | O_RDWR, 0666));
 ATF_REQUIRE_EQ(rump_sys_write(fd, buf, count), count);
 RL(rump_sys_close(fd));

 RL(fd = rump_sys_open("testi", O_RDWR));
 if (dotrunc)
  RL(rump_sys_ftruncate(fd, 0));
 ATF_REQUIRE_EQ(rump_sys_write(fd, buf, count), count);
 RL(rump_sys_close(fd));
 FSTEST_EXIT();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int RL (int) ;
 int rump_sys_close (int) ;
 int rump_sys_ftruncate (int,int) ;
 int rump_sys_open (char*,int,int) ;

__attribute__((used)) static void
shrinkfile(const atf_tc_t *tc, const char *mp)
{
 int fd;

 FSTEST_ENTER();
 RL(fd = rump_sys_open("file", O_RDWR|O_CREAT|O_TRUNC, 0666));
 RL(rump_sys_ftruncate(fd, 2));
 RL(rump_sys_ftruncate(fd, 1));
 rump_sys_close(fd);
 FSTEST_EXIT();
}

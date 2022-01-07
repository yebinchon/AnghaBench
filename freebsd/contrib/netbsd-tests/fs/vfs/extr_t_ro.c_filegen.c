
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int AFILE ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int FUNSIZE ;
 int FUNTEXT ;
 int O_CREAT ;
 int O_RDWR ;
 int RL (int) ;
 int rump_sys_close (int) ;
 int rump_sys_open (int ,int,int) ;
 int rump_sys_write (int,int ,int ) ;

__attribute__((used)) static void
filegen(const atf_tc_t *tc, const char *mp)
{
 int fd;

 FSTEST_ENTER();
 RL(fd = rump_sys_open(AFILE, O_CREAT | O_RDWR, 0777));
 ATF_REQUIRE_EQ(rump_sys_write(fd, FUNTEXT, FUNSIZE), FUNSIZE);
 RL(rump_sys_close(fd));
 FSTEST_EXIT();
}

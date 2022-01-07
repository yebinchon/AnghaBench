
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int AFILE ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EROFS ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int O_CREAT ;
 int O_RDONLY ;
 int rump_sys_open (int ,int) ;

__attribute__((used)) static void
create(const atf_tc_t *tc, const char *mp)
{

 FSTEST_ENTER();
 ATF_REQUIRE_ERRNO(EROFS, rump_sys_open(AFILE, O_CREAT|O_RDONLY) == -1);
 FSTEST_EXIT();
}

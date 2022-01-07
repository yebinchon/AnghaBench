
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int AFIFO ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EROFS ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int rump_sys_mkfifo (int ,int) ;

__attribute__((used)) static void
createfifo(const atf_tc_t *tc, const char *mp)
{

 FSTEST_ENTER();
 ATF_REQUIRE_ERRNO(EROFS, rump_sys_mkfifo(AFIFO, 0775) == -1);
 FSTEST_EXIT();
}

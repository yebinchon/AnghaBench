
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int * member_10; } ;


 int ATF_CHECK_MSG (int ,char*,char const*,char const*) ;
 int ATF_REQUIRE_MSG (int ,char*,char const*,char const*) ;
 int * strptime (char const*,char const*,struct tm*) ;

__attribute__((used)) static void
h_fail(const char *buf, const char *fmt)
{
 struct tm tm = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, ((void*)0) };





 ATF_REQUIRE_MSG(strptime(buf, fmt, &tm) == ((void*)0), "strptime(\"%s\", "
     "\"%s\", &tm) should fail, but it didn't", buf, fmt);

}

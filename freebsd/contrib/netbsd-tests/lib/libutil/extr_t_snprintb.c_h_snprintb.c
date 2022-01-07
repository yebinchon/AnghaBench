
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;


 int ATF_REQUIRE_EQ (int,int) ;
 int ATF_REQUIRE_STREQ (char const*,char*) ;
 int snprintb (char*,int,char const*,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
h_snprintb(const char *fmt, uint64_t val, const char *res)
{
 char buf[1024];
 int len, slen;

 len = snprintb(buf, sizeof(buf), fmt, val);
 slen = (int) strlen(res);

 ATF_REQUIRE_STREQ(res, buf);
 ATF_REQUIRE_EQ(len, slen);
}

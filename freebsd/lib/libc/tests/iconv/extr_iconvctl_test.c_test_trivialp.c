
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 int ATF_REQUIRE (int) ;
 int ICONV_TRIVIALP ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char const*,char const*) ;
 int iconvctl (scalar_t__,int ,int*) ;

void
test_trivialp(const char *src, const char *dst, int expected)
{
 iconv_t ic;
 int actual, status;

 ic = iconv_open(dst, src);
 ATF_REQUIRE(ic != (iconv_t)-1);

 status = iconvctl(ic, ICONV_TRIVIALP, &actual);
 ATF_REQUIRE(status == 0);

 ATF_REQUIRE(actual == expected);

 status = iconv_close(ic);
 ATF_REQUIRE(status == 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;


 int ATF_REQUIRE_EQ (int,int) ;
 int memcmp (char const*,char*,int) ;
 int snprintb_m (char*,int,char const*,int ,int) ;

__attribute__((used)) static void
h_snprintb_m(const char *fmt, uint64_t val, int line_max, const char *res,
      int res_len)
{
 char buf[1024];
 int len;

 len = snprintb_m(buf, sizeof(buf), fmt, val, line_max);

 ATF_REQUIRE_EQ(len, res_len);
 ATF_REQUIRE_EQ(0, memcmp(res, buf, res_len + 1));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eui64 {int dummy; } ;
typedef int e ;
typedef int buf ;


 int ATF_REQUIRE_MSG (int,char*) ;
 int EUI64_SIZ ;
 int atf_tc_fail (char*,char const*,int,char*) ;
 scalar_t__ eui64_aton (char const*,struct eui64*) ;
 int eui64_ntoa (struct eui64*,char*,int) ;
 int memcmp (struct eui64*,struct eui64 const*,int) ;

__attribute__((used)) static void
test_str(const char *str, const struct eui64 *eui)
{
 struct eui64 e;
 char buf[EUI64_SIZ];
 int rc;

 ATF_REQUIRE_MSG(eui64_aton(str, &e) == 0, "eui64_aton failed");
 rc = memcmp(&e, eui, sizeof(e));
 if (rc != 0) {
  eui64_ntoa(&e, buf, sizeof(buf));
  atf_tc_fail(
      "eui64_aton(\"%s\", ..) failed; memcmp returned %d. "
      "String obtained form eui64_ntoa was: `%s`",
      str, rc, buf);
 }
}

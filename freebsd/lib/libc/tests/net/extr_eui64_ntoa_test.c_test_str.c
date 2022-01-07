
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eui64 {int dummy; } ;
typedef int a ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 int EUI64_SIZ ;
 scalar_t__ eui64_ntoa (int *,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int test_eui64_id ;
 int test_eui64_id_ascii ;

__attribute__((used)) static void
test_str(const char *str, const struct eui64 *eui)
{
 char a[EUI64_SIZ];

 ATF_REQUIRE_MSG(eui64_ntoa(&test_eui64_id, a, sizeof(a)) == 0,
     "eui64_ntoa failed");
 ATF_REQUIRE_MSG(strcmp(a, test_eui64_id_ascii) == 0,
     "the strings mismatched: `%s` != `%s`", a, test_eui64_id_ascii);
}

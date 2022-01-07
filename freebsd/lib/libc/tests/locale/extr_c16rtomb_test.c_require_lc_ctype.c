
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int LC_CTYPE ;
 int atf_tc_fail (char*,char const*,int ) ;
 int errno ;
 char* setlocale (int ,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static void
require_lc_ctype(const char *locale_name)
{
 char *lc_ctype_set;

 lc_ctype_set = setlocale(LC_CTYPE, locale_name);
 if (lc_ctype_set == ((void*)0))
  atf_tc_fail("setlocale(LC_CTYPE, \"%s\") failed; errno=%d",
      locale_name, errno);

 ATF_REQUIRE(strcmp(lc_ctype_set, locale_name) == 0);
}

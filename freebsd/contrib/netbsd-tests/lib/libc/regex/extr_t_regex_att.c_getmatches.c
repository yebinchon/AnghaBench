
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static size_t
getmatches(const char *s)
{
 size_t i;
 char *q;
 for (i = 0; (q = strchr(s, '(')) != ((void*)0); i++, s = q + 1)
  continue;
 ATF_REQUIRE_MSG(i != 0, "No parentheses found");
 return i;
}

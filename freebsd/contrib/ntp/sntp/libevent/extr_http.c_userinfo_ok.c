
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHAR_IS_UNRESERVED (char const) ;
 scalar_t__ EVUTIL_ISXDIGIT_ (char const) ;
 int SUBDELIMS ;
 scalar_t__ strchr (int ,char const) ;

__attribute__((used)) static int
userinfo_ok(const char *s, const char *eos)
{
 while (s < eos) {
  if (CHAR_IS_UNRESERVED(*s) ||
      strchr(SUBDELIMS, *s) ||
      *s == ':')
   ++s;
  else if (*s == '%' && s+2 < eos &&
      EVUTIL_ISXDIGIT_(s[1]) &&
      EVUTIL_ISXDIGIT_(s[2]))
   s += 3;
  else
   return 0;
 }
 return 1;
}

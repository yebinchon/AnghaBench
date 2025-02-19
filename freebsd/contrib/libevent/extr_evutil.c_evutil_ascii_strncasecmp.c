
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EVUTIL_TOLOWER_ (int ) ;

int evutil_ascii_strncasecmp(const char *s1, const char *s2, size_t n)
{
 char c1, c2;
 while (n--) {
  c1 = EVUTIL_TOLOWER_(*s1++);
  c2 = EVUTIL_TOLOWER_(*s2++);
  if (c1 < c2)
   return -1;
  else if (c1 > c2)
   return 1;
  else if (c1 == 0)
   return 0;
 }
 return 0;
}

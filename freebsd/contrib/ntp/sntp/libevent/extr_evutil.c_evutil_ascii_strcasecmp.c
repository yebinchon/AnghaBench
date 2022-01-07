
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EVUTIL_TOLOWER_ (int ) ;

int
evutil_ascii_strcasecmp(const char *s1, const char *s2)
{
 char c1, c2;
 while (1) {
  c1 = EVUTIL_TOLOWER_(*s1++);
  c2 = EVUTIL_TOLOWER_(*s2++);
  if (c1 < c2)
   return -1;
  else if (c1 > c2)
   return 1;
  else if (c1 == 0)
   return 0;
 }
}

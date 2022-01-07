
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVUTIL_TOLOWER_ (char const) ;

__attribute__((used)) static int
prefix_suffix_match(const char *pattern, const char *name, int ignorecase)
{
 char c;

 while (1) {
  switch (c = *pattern++) {
  case '\0':
   return *name == '\0';

  case '*':
   while (*name != '\0') {
    if (prefix_suffix_match(pattern, name,
     ignorecase))
     return (1);
    ++name;
   }
   return (0);
  default:
   if (c != *name) {
    if (!ignorecase ||
        EVUTIL_TOLOWER_(c) != EVUTIL_TOLOWER_(*name))
     return (0);
   }
   ++name;
  }
 }

}

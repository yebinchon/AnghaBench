
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int country_match(const char *const cc[], const char *const country)
{
 int i;

 if (country == ((void*)0))
  return 0;
 for (i = 0; cc[i]; i++) {
  if (cc[i][0] == country[0] && cc[i][1] == country[1])
   return 1;
 }

 return 0;
}

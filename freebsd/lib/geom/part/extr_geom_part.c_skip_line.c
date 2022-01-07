
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static int
skip_line(const char *p)
{

 while (*p != '\0') {
  if (*p == '#')
   return (1);
  if (isspace(*p) == 0)
   return (0);
  p++;
 }
 return (1);
}

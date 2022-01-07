
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char const) ;

__attribute__((used)) static int
test_filter(const char *pattern, const char *test)
{
 int retval = 0;
 int negate = 0;
 const char *p = pattern;
 const char *t = test;

 if (p[0] == '^')
 {
  negate = 1;
  p++;
 }

 while (1)
 {
  if (p[0] == '\\')
   p++;
  else if (p[0] == '*')
  {
   while (p[0] == '*')
    p++;
   if (p[0] == '\\')
    p++;
   if ((t = strchr(t, p[0])) == 0)
    break;
  }
  if (p[0] != t[0])
   break;
  if (p[0] == '\0') {
   retval = 1;
   break;
  }
  p++;
  t++;
 }

 return (negate) ? !retval : retval;
}

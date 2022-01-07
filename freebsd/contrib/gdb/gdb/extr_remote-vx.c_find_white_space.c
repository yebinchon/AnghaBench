
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
find_white_space (char *p)
{
  int c;

  while ((c = *p) != ' ' && c != '\t' && c)
    {
      if (c == '\'' || c == '"')
 {
   while (*++p != c && *p)
     {
       if (*p == '\\')
  p++;
     }
   if (!*p)
     break;
 }
      p++;
    }
  return p;
}

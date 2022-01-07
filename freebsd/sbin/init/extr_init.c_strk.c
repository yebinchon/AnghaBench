
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
strk(char *p)
{
 static char *t;
 char *q;
 int c;

 if (p)
  t = p;
 if (!t)
  return 0;

 c = *t;
 while (c == ' ' || c == '\t' )
  c = *++t;
 if (!c) {
  t = 0;
  return 0;
 }
 q = t;
 if (c == '\'') {
  c = *++t;
  q = t;
  while (c && c != '\'')
   c = *++t;
  if (!c)
   q = t = 0;
  else
   *t++ = 0;
 } else {
  while (c && c != ' ' && c != '\t' )
   c = *++t;
  *t++ = 0;
  if (!c)
   t = 0;
 }
 return q;
}

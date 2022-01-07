
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUOTED ;
 int zapchar ;

__attribute__((used)) static char *
skip(char *p)
{
 char *t;
 int c, q;

 for (q = 0, t = p; (c = *p) != '\0'; p++) {
  if (c == '"') {
   q ^= QUOTED;
   continue;
  }
  if (q == QUOTED && *p == '\\' && *(p+1) == '"')
   p++;
  *t++ = *p;
  if (q == QUOTED)
   continue;
  if (c == '#') {
   zapchar = c;
   *p = 0;
   break;
  }
  if (c == '\t' || c == ' ' || c == '\n') {
   zapchar = c;
   *p++ = 0;
   while ((c = *p) == '\t' || c == ' ' || c == '\n')
    p++;
   break;
  }
 }
 *--t = '\0';
 return (p);
}

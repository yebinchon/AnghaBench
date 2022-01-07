
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;

__attribute__((used)) static char *
doublequote(char *s)
{
 int n;
 char *p, *s2;

 for (p = s, n = 0; *p; p++)
  if (*p == '"')
   n++;

 if ((s2 = malloc(p - s + n + 1)) == ((void*)0))
  return (((void*)0));

 for (p = s2; *s; s++, p++) {
  if ((*p = *s) == '"')
   *(++p) = '"';
 }
 *p = '\0';

 return (s2);
}

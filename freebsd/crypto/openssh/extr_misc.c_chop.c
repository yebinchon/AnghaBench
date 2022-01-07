
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
chop(char *s)
{
 char *t = s;
 while (*t) {
  if (*t == '\n' || *t == '\r') {
   *t = '\0';
   return s;
  }
  t++;
 }
 return s;

}

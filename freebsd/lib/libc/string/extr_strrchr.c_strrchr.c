
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strrchr(const char *p, int ch)
{
 char *save;
 char c;

 c = ch;
 for (save = ((void*)0);; ++p) {
  if (*p == c)
   save = (char *)p;
  if (*p == '\0')
   return (save);
 }

}

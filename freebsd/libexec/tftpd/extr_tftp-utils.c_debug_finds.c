
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug_find (char*) ;
 char* strchr (char*,char) ;

int
debug_finds(char *s)
{
 int i = 0;
 char *ps = s;

 while (s != ((void*)0)) {
  ps = strchr(s, ' ');
  if (ps != ((void*)0))
   *ps = '\0';
  i += debug_find(s);
  if (ps != ((void*)0))
   *ps = ' ';
  s = ps;
 }
 return (i);
}

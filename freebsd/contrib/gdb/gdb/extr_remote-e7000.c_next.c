
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
next (char **ptr)
{
  char *p = *ptr;
  char *s;
  char *r;
  int l = 0;

  while (*p && *p == ' ')
    p++;
  s = p;
  while (*p && (*p != ' ' && *p != '\t'))
    {
      l++;
      p++;
    }
  r = xmalloc (l + 1);
  memcpy (r, s, l);
  r[l] = 0;
  *ptr = p;
  return r;
}

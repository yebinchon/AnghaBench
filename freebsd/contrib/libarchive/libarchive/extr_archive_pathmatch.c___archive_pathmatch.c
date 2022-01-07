
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATHMATCH_NO_ANCHOR_START ;
 int pm (char const*,char const*,int) ;
 char* strchr (char const*,char) ;

int
__archive_pathmatch(const char *p, const char *s, int flags)
{

 if (p == ((void*)0) || *p == '\0')
  return (s == ((void*)0) || *s == '\0');


 if (*p == '^') {
  ++p;
  flags &= ~PATHMATCH_NO_ANCHOR_START;
 }

 if (*p == '/' && *s != '/')
  return (0);


 if (*p == '*' || *p == '/') {
  while (*p == '/')
   ++p;
  while (*s == '/')
   ++s;
  return (pm(p, s, flags));
 }


 if (flags & PATHMATCH_NO_ANCHOR_START) {
  for ( ; s != ((void*)0); s = strchr(s, '/')) {
   if (*s == '/')
    s++;
   if (pm(p, s, flags))
    return (1);
  }
  return (0);
 }


 return (pm(p, s, flags));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int PATHMATCH_NO_ANCHOR_START ;
 int pm_w (int const*,int const*,int) ;
 int* wcschr (int const*,int) ;

int
__archive_pathmatch_w(const wchar_t *p, const wchar_t *s, int flags)
{

 if (p == ((void*)0) || *p == L'\0')
  return (s == ((void*)0) || *s == L'\0');


 if (*p == L'^') {
  ++p;
  flags &= ~PATHMATCH_NO_ANCHOR_START;
 }

 if (*p == L'/' && *s != L'/')
  return (0);


 if (*p == L'*' || *p == L'/') {
  while (*p == L'/')
   ++p;
  while (*s == L'/')
   ++s;
  return (pm_w(p, s, flags));
 }


 if (flags & PATHMATCH_NO_ANCHOR_START) {
  for ( ; s != ((void*)0); s = wcschr(s, L'/')) {
   if (*s == L'/')
    s++;
   if (pm_w(p, s, flags))
    return (1);
  }
  return (0);
 }


 return (pm_w(p, s, flags));
}

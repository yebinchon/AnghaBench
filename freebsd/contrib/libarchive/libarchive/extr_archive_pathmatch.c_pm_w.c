
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int PATHMATCH_NO_ANCHOR_END ;
 int archive_pathmatch_w (int const*,int const*,int) ;
 int pm_list_w (int const*,int const*,int const,int) ;
 int* pm_slashskip_w (int const*) ;

__attribute__((used)) static int
pm_w(const wchar_t *p, const wchar_t *s, int flags)
{
 const wchar_t *end;




 if (s[0] == L'.' && s[1] == L'/')
  s = pm_slashskip_w(s + 1);
 if (p[0] == L'.' && p[1] == L'/')
  p = pm_slashskip_w(p + 1);

 for (;;) {
  switch (*p) {
  case L'\0':
   if (s[0] == L'/') {
    if (flags & PATHMATCH_NO_ANCHOR_END)
     return (1);

    s = pm_slashskip_w(s);
   }
   return (*s == L'\0');
  case L'?':

   if (*s == L'\0')
    return (0);
   break;
  case L'*':

   while (*p == L'*')
    ++p;

   if (*p == L'\0')
    return (1);
   while (*s) {
    if (archive_pathmatch_w(p, s, flags))
     return (1);
    ++s;
   }
   return (0);
  case L'[':




   end = p + 1;
   while (*end != L'\0' && *end != L']') {
    if (*end == L'\\' && end[1] != L'\0')
     ++end;
    ++end;
   }
   if (*end == L']') {

    if (!pm_list_w(p + 1, end, *s, flags))
     return (0);
    p = end;
    break;
   } else

    if (*p != *s)
     return (0);
   break;
  case L'\\':

   if (p[1] == L'\0') {
    if (*s != L'\\')
     return (0);
   } else {
    ++p;
    if (*p != *s)
     return (0);
   }
   break;
  case L'/':
   if (*s != L'/' && *s != L'\0')
    return (0);


   p = pm_slashskip_w(p);
   s = pm_slashskip_w(s);
   if (*p == L'\0' && (flags & PATHMATCH_NO_ANCHOR_END))
    return (1);
   --p;
   --s;
   break;
  case L'$':


   if (p[1] == L'\0' && (flags & PATHMATCH_NO_ANCHOR_END)){

    return (*pm_slashskip_w(s) == L'\0');
   }


  default:
   if (*p != *s)
    return (0);
   break;
  }
  ++p;
  ++s;
 }
}

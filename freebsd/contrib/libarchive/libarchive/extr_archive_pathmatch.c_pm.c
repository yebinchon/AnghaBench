
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATHMATCH_NO_ANCHOR_END ;
 int archive_pathmatch (char const*,char const*,int) ;
 int pm_list (char const*,char const*,char const,int) ;
 char* pm_slashskip (char const*) ;

__attribute__((used)) static int
pm(const char *p, const char *s, int flags)
{
 const char *end;




 if (s[0] == '.' && s[1] == '/')
  s = pm_slashskip(s + 1);
 if (p[0] == '.' && p[1] == '/')
  p = pm_slashskip(p + 1);

 for (;;) {
  switch (*p) {
  case '\0':
   if (s[0] == '/') {
    if (flags & PATHMATCH_NO_ANCHOR_END)
     return (1);

    s = pm_slashskip(s);
   }
   return (*s == '\0');
  case '?':

   if (*s == '\0')
    return (0);
   break;
  case '*':

   while (*p == '*')
    ++p;

   if (*p == '\0')
    return (1);
   while (*s) {
    if (archive_pathmatch(p, s, flags))
     return (1);
    ++s;
   }
   return (0);
  case '[':




   end = p + 1;
   while (*end != '\0' && *end != ']') {
    if (*end == '\\' && end[1] != '\0')
     ++end;
    ++end;
   }
   if (*end == ']') {

    if (!pm_list(p + 1, end, *s, flags))
     return (0);
    p = end;
    break;
   } else

    if (*p != *s)
     return (0);
   break;
  case '\\':

   if (p[1] == '\0') {
    if (*s != '\\')
     return (0);
   } else {
    ++p;
    if (*p != *s)
     return (0);
   }
   break;
  case '/':
   if (*s != '/' && *s != '\0')
    return (0);


   p = pm_slashskip(p);
   s = pm_slashskip(s);
   if (*p == '\0' && (flags & PATHMATCH_NO_ANCHOR_END))
    return (1);
   --p;
   --s;
   break;
  case '$':


   if (p[1] == '\0' && (flags & PATHMATCH_NO_ANCHOR_END)){

    return (*pm_slashskip(s) == '\0');
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

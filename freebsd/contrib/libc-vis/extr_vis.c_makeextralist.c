
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ u_char ;
typedef int mbstate_t ;
typedef int mbstate ;


 scalar_t__ MAXEXTRAS ;
 int VIS_DQ ;
 int VIS_GLOB ;
 int VIS_NL ;
 int VIS_NOLOCALE ;
 int VIS_NOSLASH ;
 int VIS_SHELL ;
 int VIS_SP ;
 int VIS_TAB ;
 int bzero (int *,int) ;
 int* calloc (scalar_t__,int) ;
 int* char_glob ;
 int* char_shell ;
 size_t mbsrtowcs (int*,char const**,size_t,int *) ;
 size_t strlen (char const*) ;
 int wcslen (int*) ;

__attribute__((used)) static wchar_t *
makeextralist(int flags, const char *src)
{
 wchar_t *dst, *d;
 size_t len;
 const wchar_t *s;
 mbstate_t mbstate;

 bzero(&mbstate, sizeof(mbstate));
 len = strlen(src);
 if ((dst = calloc(len + MAXEXTRAS, sizeof(*dst))) == ((void*)0))
  return ((void*)0);

 if ((flags & VIS_NOLOCALE) || mbsrtowcs(dst, &src, len, &mbstate) == (size_t)-1) {
  size_t i;
  for (i = 0; i < len; i++)
   dst[i] = (wchar_t)(u_char)src[i];
  d = dst + len;
 } else
  d = dst + wcslen(dst);

 if (flags & VIS_GLOB)
  for (s = char_glob; *s; *d++ = *s++)
   continue;

 if (flags & VIS_SHELL)
  for (s = char_shell; *s; *d++ = *s++)
   continue;

 if (flags & VIS_SP) *d++ = L' ';
 if (flags & VIS_TAB) *d++ = L'\t';
 if (flags & VIS_NL) *d++ = L'\n';
 if (flags & VIS_DQ) *d++ = L'"';
 if ((flags & VIS_NOSLASH) == 0) *d++ = L'\\';
 *d = L'\0';

 return dst;
}

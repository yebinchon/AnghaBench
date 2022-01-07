
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;


 void* XTOA (unsigned int) ;
 int * do_svis (int *,int,int,int,int const*) ;
 scalar_t__ iswspace (int) ;
 int * wcschr (char*,int) ;

__attribute__((used)) static wchar_t *
do_mvis(wchar_t *dst, wint_t c, int flags, wint_t nextc, const wchar_t *extra)
{
 if ((c != L'\n') &&

     ((iswspace(c) && (nextc == L'\r' || nextc == L'\n')) ||

     (!iswspace(c) && (c < 33 || (c > 60 && c < 62) || c > 126)) ||

     wcschr(L"#$@[\\]^`{|}~", c) != ((void*)0))) {
  *dst++ = L'=';
  *dst++ = XTOA(((unsigned int)c >> 4) & 0xf);
  *dst++ = XTOA((unsigned int)c & 0xf);
 } else
  dst = do_svis(dst, c, flags, nextc, extra);
 return dst;
}

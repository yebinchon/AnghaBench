
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;


 int * do_svis (int *,int,int,int,int const*) ;
 scalar_t__ iswalnum (int) ;
 void* xtoa (unsigned int) ;

__attribute__((used)) static wchar_t *
do_hvis(wchar_t *dst, wint_t c, int flags, wint_t nextc, const wchar_t *extra)
{
 if (iswalnum(c)

     || c == L'$' || c == L'-' || c == L'_' || c == L'.' || c == L'+'

     || c == L'!' || c == L'*' || c == L'\'' || c == L'(' || c == L')'
     || c == L',')
  dst = do_svis(dst, c, flags, nextc, extra);
 else {
  *dst++ = L'%';
  *dst++ = xtoa(((unsigned int)c >> 4) & 0xf);
  *dst++ = xtoa((unsigned int)c & 0xf);
 }

 return dst;
}

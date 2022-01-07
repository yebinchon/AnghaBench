
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef scalar_t__ wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
typedef int FILE ;


 scalar_t__* SUPPRESS_PTR ;
 scalar_t__ WEOF ;
 scalar_t__ __fgetwc_mbs (int *,int *,int*,int ) ;
 int initial_mbs ;

__attribute__((used)) static __inline int
convert_wchar(FILE *fp, wchar_t *wcp, int width, locale_t locale)
{
 mbstate_t mbs;
 int n, nread;
 wint_t wi;

 mbs = initial_mbs;
 n = 0;
 while (width-- != 0 &&
     (wi = __fgetwc_mbs(fp, &mbs, &nread, locale)) != WEOF) {
  if (wcp != SUPPRESS_PTR)
   *wcp++ = (wchar_t)wi;
  n += nread;
 }
 if (n == 0)
  return (-1);
 return (n);
}

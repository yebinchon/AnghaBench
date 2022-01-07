
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef char wchar_t ;
typedef int locale_t ;
typedef int FILE ;


 char* SUPPRESS_PTR ;
 scalar_t__ WEOF ;
 scalar_t__ __fgetwc (int *,int ) ;
 int __ungetwc (scalar_t__,int *,int ) ;
 int iswspace (scalar_t__) ;

__attribute__((used)) static __inline int
convert_wstring(FILE *fp, wchar_t *wcp, int width, locale_t locale)
{
 wchar_t *wcp0;
 wint_t wi;
 int nread;

 nread = 0;
 if (wcp == SUPPRESS_PTR) {
  while ((wi = __fgetwc(fp, locale)) != WEOF &&
      width-- != 0 && !iswspace(wi))
   nread++;
  if (wi != WEOF)
   __ungetwc(wi, fp, locale);
 } else {
  wcp0 = wcp;
  while ((wi = __fgetwc(fp, locale)) != WEOF &&
      width-- != 0 && !iswspace(wi)) {
   *wcp++ = (wchar_t)wi;
   nread++;
  }
  if (wi != WEOF)
   __ungetwc(wi, fp, locale);
  *wcp = '\0';
 }
 return (nread);
}

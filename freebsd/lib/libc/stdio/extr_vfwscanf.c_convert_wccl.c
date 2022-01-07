
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef scalar_t__ wchar_t ;
struct ccl {int dummy; } ;
typedef int locale_t ;
typedef int FILE ;


 scalar_t__* SUPPRESS_PTR ;
 scalar_t__ WEOF ;
 scalar_t__ __fgetwc (int *,int ) ;
 int __ungetwc (scalar_t__,int *,int ) ;
 scalar_t__ inccl (struct ccl const*,scalar_t__) ;

__attribute__((used)) static __inline int
convert_wccl(FILE *fp, wchar_t *wcp, int width, const struct ccl *ccl,
    locale_t locale)
{
 wchar_t *wcp0;
 wint_t wi;
 int n;

 if (wcp == SUPPRESS_PTR) {
  n = 0;
  while ((wi = __fgetwc(fp, locale)) != WEOF &&
      width-- != 0 && inccl(ccl, wi))
   n++;
  if (wi != WEOF)
   __ungetwc(wi, fp, locale);
 } else {
  wcp0 = wcp;
  while ((wi = __fgetwc(fp, locale)) != WEOF &&
      width-- != 0 && inccl(ccl, wi))
   *wcp++ = (wchar_t)wi;
  if (wi != WEOF)
   __ungetwc(wi, fp, locale);
  n = wcp - wcp0;
  if (n == 0)
   return (0);
  *wcp = 0;
 }
 return (n);
}

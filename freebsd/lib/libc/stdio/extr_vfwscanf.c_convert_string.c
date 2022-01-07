
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef int mbstate_t ;
typedef int locale_t ;
typedef int FILE ;


 char* SUPPRESS_PTR ;
 scalar_t__ WEOF ;
 scalar_t__ __fgetwc (int *,int ) ;
 int __ungetwc (scalar_t__,int *,int ) ;
 int initial_mbs ;
 int iswspace (scalar_t__) ;
 size_t wcrtomb (char*,scalar_t__,int *) ;

__attribute__((used)) static __inline int
convert_string(FILE *fp, char * mbp, int width, locale_t locale)
{
 mbstate_t mbs;
 size_t nconv;
 wint_t wi;
 int nread;

 mbs = initial_mbs;
 nread = 0;
 while ((wi = __fgetwc(fp, locale)) != WEOF && width-- != 0 &&
     !iswspace(wi)) {
  if (mbp != SUPPRESS_PTR) {
   nconv = wcrtomb(mbp, wi, &mbs);
   if (nconv == (size_t)-1)
    return (-1);
   mbp += nconv;
  }
  nread++;
 }
 if (wi != WEOF)
  __ungetwc(wi, fp, locale);
 if (mbp != SUPPRESS_PTR)
  *mbp = 0;
 return (nread);
}

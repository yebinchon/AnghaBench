
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int mbstate_t ;
typedef int locale_t ;
typedef int FILE ;


 char* SUPPRESS_PTR ;
 int WEOF ;
 int __fgetwc (int *,int ) ;
 int initial_mbs ;
 size_t wcrtomb (char*,int ,int *) ;

__attribute__((used)) static __inline int
convert_char(FILE *fp, char * mbp, int width, locale_t locale)
{
 mbstate_t mbs;
 size_t nconv;
 wint_t wi;
 int n;

 n = 0;
 mbs = initial_mbs;
 while (width-- != 0 && (wi = __fgetwc(fp, locale)) != WEOF) {
  if (mbp != SUPPRESS_PTR) {
   nconv = wcrtomb(mbp, wi, &mbs);
   if (nconv == (size_t)-1)
    return (-1);
   mbp += nconv;
  }
  n++;
 }
 if (n == 0)
  return (-1);
 return (n);
}

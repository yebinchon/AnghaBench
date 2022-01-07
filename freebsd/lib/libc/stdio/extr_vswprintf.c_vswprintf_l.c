
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
typedef int __va_list ;
struct TYPE_5__ {unsigned char* _base; int _size; } ;
struct TYPE_6__ {int _flags; unsigned char* _p; int _w; TYPE_1__ _bf; } ;
typedef TYPE_2__ FILE ;


 int EILSEQ ;
 int EINVAL ;
 int ENOMEM ;
 int EOVERFLOW ;
 TYPE_2__ FAKE_FILE ;
 int FIX_LOCALE (int ) ;
 size_t INT_MAX ;
 int __SALC ;
 int __SSTR ;
 int __SWR ;
 int __vfwprintf (TYPE_2__*,int ,int const*,int ) ;
 int errno ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 size_t mbsrtowcs_l (int*,char const**,size_t,int *,int ) ;

int
vswprintf_l(wchar_t * __restrict s, size_t n, locale_t locale,
  const wchar_t * __restrict fmt, __va_list ap)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 FILE f = FAKE_FILE;
 char *mbp;
 int ret, sverrno;
 size_t nwc;
 FIX_LOCALE(locale);

 if (n == 0) {
  errno = EINVAL;
  return (-1);
 }
 if (n - 1 > INT_MAX) {
  errno = EOVERFLOW;
  *s = L'\0';
  return (-1);
 }

 f._flags = __SWR | __SSTR | __SALC;
 f._bf._base = f._p = (unsigned char *)malloc(128);
 if (f._bf._base == ((void*)0)) {
  errno = ENOMEM;
  *s = L'\0';
  return (-1);
 }
 f._bf._size = f._w = 127;
 ret = __vfwprintf(&f, locale, fmt, ap);
 if (ret < 0) {
  sverrno = errno;
  free(f._bf._base);
  errno = sverrno;
  *s = L'\0';
  return (-1);
 }
 *f._p = '\0';
 mbp = f._bf._base;




 mbs = initial;
 nwc = mbsrtowcs_l(s, (const char **)&mbp, n, &mbs, locale);
 free(f._bf._base);
 if (nwc == (size_t)-1) {
  errno = EILSEQ;
  *s = L'\0';
  return (-1);
 }
 if (nwc == n) {
  s[n - 1] = L'\0';
  errno = EOVERFLOW;
  return (-1);
 }

 return (ret);
}

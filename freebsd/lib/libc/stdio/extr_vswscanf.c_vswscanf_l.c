
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int va_list ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_5__ {unsigned char* _base; size_t _size; } ;
struct TYPE_6__ {unsigned char* _p; size_t _r; int _read; TYPE_1__ _bf; int _flags; } ;
typedef TYPE_2__ FILE ;


 int EOF ;
 TYPE_2__ FAKE_FILE ;
 int FIX_LOCALE (int ) ;
 int MB_CUR_MAX ;
 int SIZE_T_MAX ;
 int __SRD ;
 int __vfwscanf (TYPE_2__*,int ,int const*,int ) ;
 int eofread ;
 int free (char*) ;
 char* malloc (int) ;
 int wcslen (int const*) ;
 size_t wcsrtombs_l (char*,int const**,int ,int *,int ) ;

int
vswscanf_l(const wchar_t * __restrict str, locale_t locale,
  const wchar_t * __restrict fmt, va_list ap)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 FILE f = FAKE_FILE;
 char *mbstr;
 size_t mlen;
 int r;
 const wchar_t *strp;
 FIX_LOCALE(locale);





 if ((mbstr = malloc(wcslen(str) * MB_CUR_MAX + 1)) == ((void*)0))
  return (EOF);
 mbs = initial;
 strp = str;
 if ((mlen = wcsrtombs_l(mbstr, &strp, SIZE_T_MAX, &mbs, locale)) == (size_t)-1) {
  free(mbstr);
  return (EOF);
 }
 f._flags = __SRD;
 f._bf._base = f._p = (unsigned char *)mbstr;
 f._bf._size = f._r = mlen;
 f._read = eofread;
 r = __vfwscanf(&f, locale, fmt, ap);
 free(mbstr);

 return (r);
}

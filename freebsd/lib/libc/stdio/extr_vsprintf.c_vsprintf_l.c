
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int locale_t ;
typedef int __va_list ;
struct TYPE_5__ {unsigned char* _base; int _size; } ;
struct TYPE_6__ {int _flags; unsigned char* _p; int _w; TYPE_1__ _bf; } ;
typedef TYPE_2__ FILE ;


 TYPE_2__ FAKE_FILE ;
 int FIX_LOCALE (int ) ;
 int INT_MAX ;
 int __SSTR ;
 int __SWR ;
 int __vfprintf (TYPE_2__*,int ,char const*,int ) ;

int
vsprintf_l(char * __restrict str, locale_t locale,
  const char * __restrict fmt, __va_list ap)
{
 int ret;
 FILE f = FAKE_FILE;
 FIX_LOCALE(locale);

 f._flags = __SWR | __SSTR;
 f._bf._base = f._p = (unsigned char *)str;
 f._bf._size = f._w = INT_MAX;
 ret = __vfprintf(&f, locale, fmt, ap);
 *f._p = 0;
 return (ret);
}

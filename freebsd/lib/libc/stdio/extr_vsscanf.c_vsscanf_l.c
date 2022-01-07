
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int locale_t ;
typedef int __va_list ;
struct TYPE_5__ {unsigned char* _base; int _size; } ;
struct TYPE_6__ {unsigned char* _p; int _read; int _r; TYPE_1__ _bf; int _flags; } ;
typedef TYPE_2__ FILE ;


 TYPE_2__ FAKE_FILE ;
 int FIX_LOCALE (int ) ;
 int __SRD ;
 int __svfscanf (TYPE_2__*,int ,char const*,int ) ;
 int eofread ;
 int strlen (char const*) ;

int
vsscanf_l(const char * __restrict str, locale_t locale,
  const char * __restrict fmt, __va_list ap)
{
 FILE f = FAKE_FILE;
 FIX_LOCALE(locale);

 f._flags = __SRD;
 f._bf._base = f._p = (unsigned char *)str;
 f._bf._size = f._r = strlen(str);
 f._read = eofread;
 return (__svfscanf(&f, locale, fmt, ap));
}

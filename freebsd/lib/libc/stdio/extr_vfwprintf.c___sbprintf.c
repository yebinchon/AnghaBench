
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int va_list ;
typedef int locale_t ;
typedef int buf ;
struct TYPE_7__ {unsigned char* _base; int _size; } ;
struct TYPE_8__ {int _flags; unsigned char* _p; int _w; scalar_t__ _lbfsize; TYPE_1__ _bf; int _mbstate; int _orientation; int _write; int _cookie; int _file; } ;
typedef TYPE_2__ FILE ;


 int BUFSIZ ;
 int EOF ;
 int WEOF ;
 int __SERR ;
 int __SNBF ;
 scalar_t__ __fflush (TYPE_2__*) ;
 int __vfwprintf (TYPE_2__*,int ,int const*,int ) ;
 scalar_t__ prepwrite (TYPE_2__*) ;

__attribute__((used)) static int
__sbprintf(FILE *fp, locale_t locale, const wchar_t *fmt, va_list ap)
{
 int ret;
 FILE fake;
 unsigned char buf[BUFSIZ];


 if (prepwrite(fp) != 0)
  return (EOF);


 fake._flags = fp->_flags & ~__SNBF;
 fake._file = fp->_file;
 fake._cookie = fp->_cookie;
 fake._write = fp->_write;
 fake._orientation = fp->_orientation;
 fake._mbstate = fp->_mbstate;


 fake._bf._base = fake._p = buf;
 fake._bf._size = fake._w = sizeof(buf);
 fake._lbfsize = 0;


 ret = __vfwprintf(&fake, locale, fmt, ap);
 if (ret >= 0 && __fflush(&fake))
  ret = WEOF;
 if (fake._flags & __SERR)
  fp->_flags |= __SERR;
 return (ret);
}

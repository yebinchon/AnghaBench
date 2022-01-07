
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int va_list ;
typedef int buf ;
struct TYPE_7__ {unsigned char* _base; int _size; } ;
struct TYPE_8__ {int _flags; unsigned char* _p; int _w; scalar_t__ _lbfsize; TYPE_1__ _bf; int _mbstate; int _orientation; int _write; int _cookie; int _file; } ;
typedef TYPE_2__ FILE ;


 int BUFSIZ ;
 int EOF ;
 TYPE_2__ FAKE_FILE ;
 int __SERR ;
 int __SNBF ;
 scalar_t__ __fflush (TYPE_2__*) ;
 int __v2printf (TYPE_2__*,char const*,int,int ) ;

__attribute__((used)) static int
__v3printf(FILE *fp, const char *fmt, int pct, va_list ap)
{
 int ret;
 FILE fake = FAKE_FILE;
 unsigned char buf[BUFSIZ];


 fake._flags = fp->_flags & ~__SNBF;
 fake._file = fp->_file;
 fake._cookie = fp->_cookie;
 fake._write = fp->_write;
 fake._orientation = fp->_orientation;
 fake._mbstate = fp->_mbstate;


 fake._bf._base = fake._p = buf;
 fake._bf._size = fake._w = sizeof(buf);
 fake._lbfsize = 0;


 ret = __v2printf(&fake, fmt, pct, ap);
 if (ret >= 0 && __fflush(&fake))
  ret = EOF;
 if (fake._flags & __SERR)
  fp->_flags |= __SERR;
 return (ret);
}

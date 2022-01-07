
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
typedef int buf ;
struct TYPE_6__ {unsigned char* _base; int _size; } ;
struct TYPE_7__ {unsigned char* _p; int _w; int _file; TYPE_1__ _bf; int _write; struct TYPE_7__* _cookie; int _flags; } ;
typedef TYPE_2__ FILE ;


 int BUFSIZ ;
 int EMFILE ;
 int EOF ;
 TYPE_2__ FAKE_FILE ;
 int SHRT_MAX ;
 int __SWR ;
 scalar_t__ __fflush (TYPE_2__*) ;
 int __get_locale () ;
 int __swrite ;
 int __vfprintf (TYPE_2__*,int ,char const*,int ) ;
 int errno ;

int
vdprintf(int fd, const char * __restrict fmt, va_list ap)
{
 FILE f = FAKE_FILE;
 unsigned char buf[BUFSIZ];
 int ret;

 if (fd > SHRT_MAX) {
  errno = EMFILE;
  return (EOF);
 }

 f._p = buf;
 f._w = sizeof(buf);
 f._flags = __SWR;
 f._file = fd;
 f._cookie = &f;
 f._write = __swrite;
 f._bf._base = buf;
 f._bf._size = sizeof(buf);

 if ((ret = __vfprintf(&f, __get_locale(), fmt, ap)) < 0)
  return (ret);

 return (__fflush(&f) ? EOF : ret);
}

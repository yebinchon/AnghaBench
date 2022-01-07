
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fpos_t ;
struct TYPE_5__ {int _flags; int _file; int _flags2; int _close; int _seek; int _write; int _read; struct TYPE_5__* _cookie; } ;
typedef TYPE_1__ FILE ;


 int DEFFILEMODE ;
 int EMFILE ;
 int O_APPEND ;
 int SEEK_END ;
 int SHRT_MAX ;
 int __S2OAP ;
 int __sclose ;
 int __sflags (char const*,int*) ;
 TYPE_1__* __sfp () ;
 int __sread ;
 int __sseek ;
 int __swrite ;
 int _close (int) ;
 int _open (char const*,int,int ) ;
 int _sseek (TYPE_1__*,int ,int ) ;
 int errno ;

FILE *
fopen(const char * __restrict file, const char * __restrict mode)
{
 FILE *fp;
 int f;
 int flags, oflags;

 if ((flags = __sflags(mode, &oflags)) == 0)
  return (((void*)0));
 if ((fp = __sfp()) == ((void*)0))
  return (((void*)0));
 if ((f = _open(file, oflags, DEFFILEMODE)) < 0) {
  fp->_flags = 0;
  return (((void*)0));
 }







 if (f > SHRT_MAX) {
  fp->_flags = 0;
  _close(f);
  errno = EMFILE;
  return (((void*)0));
 }
 fp->_file = f;
 fp->_flags = flags;
 fp->_cookie = fp;
 fp->_read = __sread;
 fp->_write = __swrite;
 fp->_seek = __sseek;
 fp->_close = __sclose;
 if (oflags & O_APPEND) {
  fp->_flags2 |= __S2OAP;
  (void)_sseek(fp, (fpos_t)0, SEEK_END);
 }
 return (fp);
}

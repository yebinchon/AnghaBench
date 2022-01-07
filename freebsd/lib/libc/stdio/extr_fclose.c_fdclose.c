
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ _flags; scalar_t__ _close; int _file; } ;
typedef TYPE_1__ FILE ;


 int EBADF ;
 int EOF ;
 int EOPNOTSUPP ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 scalar_t__ __sclose ;
 int cleanfile (TYPE_1__*,int) ;
 int errno ;

int
fdclose(FILE *fp, int *fdp)
{
 int r, err;

 if (fdp != ((void*)0))
  *fdp = -1;

 if (fp->_flags == 0) {
  errno = EBADF;
  return (EOF);
 }

 FLOCKFILE_CANCELSAFE(fp);
 r = 0;
 if (fp->_close != __sclose) {
  r = EOF;
  errno = EOPNOTSUPP;
 } else if (fp->_file < 0) {
  r = EOF;
  errno = EBADF;
 }
 if (r == EOF) {
  err = errno;
  (void)cleanfile(fp, 1);
  errno = err;
 } else {
  if (fdp != ((void*)0))
   *fdp = fp->_file;
  r = cleanfile(fp, 0);
 }
 FUNLOCKFILE_CANCELSAFE();

 return (r);
}

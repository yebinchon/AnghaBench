
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ _flags; } ;
typedef TYPE_1__ FILE ;


 int EBADF ;
 int EOF ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int cleanfile (TYPE_1__*,int) ;
 int errno ;

int
fclose(FILE *fp)
{
 int r;

 if (fp->_flags == 0) {
  errno = EBADF;
  return (EOF);
 }

 FLOCKFILE_CANCELSAFE(fp);
 r = cleanfile(fp, 1);
 FUNLOCKFILE_CANCELSAFE();

 return (r);
}

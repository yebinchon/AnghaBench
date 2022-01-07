
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __sdidinit ;
 int __sinit () ;
 int _fseeko (int *,int ,int,int ) ;
 int errno ;

int
fseeko(FILE *fp, off_t offset, int whence)
{
 int ret;
 int serrno = errno;


 if (!__sdidinit)
  __sinit();

 FLOCKFILE_CANCELSAFE(fp);
 ret = _fseeko(fp, offset, whence, 0);
 FUNLOCKFILE_CANCELSAFE();
 if (ret == 0)
  errno = serrno;
 return (ret);
}

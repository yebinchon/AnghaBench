
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int FLOCKFILE (int *) ;
 int FUNLOCKFILE (int *) ;
 int SEEK_SET ;
 int __sdidinit ;
 int __sinit () ;
 scalar_t__ _fseeko (int *,int ,int ,int) ;
 int clearerr_unlocked (int *) ;
 int errno ;

void
rewind(FILE *fp)
{
 int serrno = errno;


 if (!__sdidinit)
  __sinit();

 FLOCKFILE(fp);
 if (_fseeko(fp, (off_t)0, SEEK_SET, 1) == 0)
  errno = serrno;
 clearerr_unlocked(fp);
 FUNLOCKFILE(fp);
}

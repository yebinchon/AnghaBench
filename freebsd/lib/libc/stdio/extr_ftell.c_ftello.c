
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef scalar_t__ fpos_t ;
typedef int FILE ;


 int ESPIPE ;
 int FLOCKFILE (int *) ;
 int FUNLOCKFILE (int *) ;
 int _ftello (int *,scalar_t__*) ;
 int errno ;

off_t
ftello(FILE *fp)
{
 fpos_t rv;
 int ret;

 FLOCKFILE(fp);
 ret = _ftello(fp, &rv);
 FUNLOCKFILE(fp);
 if (ret)
  return (-1);
 if (rv < 0) {
  errno = ESPIPE;
  return (-1);
 }
 return (rv);
}

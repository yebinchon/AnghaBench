
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE (int *) ;
 int FUNLOCKFILE (int *) ;
 int __sferror (int *) ;

int
ferror(FILE *fp)
{
 int ret;

 FLOCKFILE(fp);
 ret = __sferror(fp);
 FUNLOCKFILE(fp);
 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (int *,int) ;
 int __sdidinit ;
 int __sinit () ;
 int __ungetc (int,int *) ;

int
ungetc(int c, FILE *fp)
{
 int ret;

 if (!__sdidinit)
  __sinit();
 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, -1);
 ret = __ungetc(c, fp);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}

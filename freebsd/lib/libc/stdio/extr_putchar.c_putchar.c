
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __sputc (int,int *) ;
 int * stdout ;

int
putchar(int c)
{
 int retval;
 FILE *so = stdout;

 FLOCKFILE_CANCELSAFE(so);


 retval = __sputc(c, so);
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}

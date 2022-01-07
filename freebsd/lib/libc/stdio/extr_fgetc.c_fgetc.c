
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __sgetc (int *) ;

int
fgetc(FILE *fp)
{
 int retval;
 FLOCKFILE_CANCELSAFE(fp);


 retval = __sgetc(fp);
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}

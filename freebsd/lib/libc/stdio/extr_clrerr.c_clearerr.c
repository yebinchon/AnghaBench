
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE (int *) ;
 int FUNLOCKFILE (int *) ;
 int __sclearerr (int *) ;

void
clearerr(FILE *fp)
{
 FLOCKFILE(fp);
 __sclearerr(fp);
 FUNLOCKFILE(fp);
}

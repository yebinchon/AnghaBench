
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int __sclearerr (int *) ;

void
clearerr_unlocked(FILE *fp)
{

 __sclearerr(fp);
}

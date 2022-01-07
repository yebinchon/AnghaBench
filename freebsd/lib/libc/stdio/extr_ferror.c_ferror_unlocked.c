
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int __sferror (int *) ;

int
ferror_unlocked(FILE *fp)
{

 return (__sferror(fp));
}

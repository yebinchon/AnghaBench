
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int __sputc (int,int *) ;

int
putc_unlocked(int ch, FILE *fp)
{

 return (__sputc(ch, fp));
}

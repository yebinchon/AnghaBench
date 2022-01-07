
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int FILE ;


 int fgetwc (int *) ;

wint_t
getwc(FILE *fp)
{

 return (fgetwc(fp));
}

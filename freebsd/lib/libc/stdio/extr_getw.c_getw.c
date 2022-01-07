
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef int FILE ;


 int EOF ;
 int fread (void*,int,int,int *) ;

int
getw(FILE *fp)
{
 int x;

 return (fread((void *)&x, sizeof(x), 1, fp) == 1 ? x : EOF);
}

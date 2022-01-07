
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int __sfeof (int *) ;

int
feof_unlocked(FILE *fp)
{

 return (__sfeof(fp));
}

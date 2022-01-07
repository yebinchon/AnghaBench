
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpos_t ;
typedef int FILE ;


 int ftello (int *) ;

int
fgetpos(FILE * __restrict fp, fpos_t * __restrict pos)
{



 if ((*pos = ftello(fp)) == (fpos_t)-1)
  return (-1);
 else
  return (0);
}

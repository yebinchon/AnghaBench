
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef scalar_t__ fpos_t ;
typedef int FILE ;


 int SEEK_SET ;
 int fseeko (int *,int ,int ) ;

int
fsetpos(FILE *iop, const fpos_t *pos)
{
 return (fseeko(iop, (off_t)*pos, SEEK_SET));
}

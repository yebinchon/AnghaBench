
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Cell ;


 int FATAL (char*,int) ;
 int ** fldtab ;
 int growfldtab (int) ;
 int nfields ;

Cell *fieldadr(int n)
{
 if (n < 0)
  FATAL("trying to access out of range field %d", n);
 if (n > nfields)
  growfldtab(n);
 return(fldtab[n]);
}

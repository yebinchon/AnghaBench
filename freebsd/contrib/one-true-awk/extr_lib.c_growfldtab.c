
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Cell {int dummy; } ;
typedef int Cell ;


 int FATAL (char*,int) ;
 int ** fldtab ;
 int makefields (int,int) ;
 int nfields ;
 scalar_t__ realloc (int **,size_t) ;
 int xfree (int **) ;

void growfldtab(int n)
{
 int nf = 2 * nfields;
 size_t s;

 if (n > nf)
  nf = n;
 s = (nf+1) * (sizeof (struct Cell *));
 if (s / sizeof(struct Cell *) - 1 == nf)
  fldtab = (Cell **) realloc(fldtab, s);
 else
  xfree(fldtab);
 if (fldtab == ((void*)0))
  FATAL("out of space creating %d fields", nf);
 makefields(nfields+1, nf);
 nfields = nf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uch ;
struct re_guts {int ncsets; int csetsize; scalar_t__* setbits; } ;


 int CHAR_BIT ;

__attribute__((used)) static int
samesets(struct re_guts *g, int c1, int c2)
{
 uch *col;
 int i;
 int ncols = (g->ncsets+(CHAR_BIT-1)) / CHAR_BIT;
 unsigned uc1 = (uch)c1;
 unsigned uc2 = (uch)c2;

 for (i = 0, col = g->setbits; i < ncols; i++, col += g->csetsize)
  if (col[uc1] != col[uc2])
   return(0);
 return(1);
}

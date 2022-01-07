
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* sval; int tval; } ;
typedef TYPE_1__ Cell ;


 int DONTFREE ;
 int FLD ;
 int STR ;
 TYPE_1__** fldtab ;
 scalar_t__ freeable (TYPE_1__*) ;
 int xfree (char*) ;

void cleanfld(int n1, int n2)
{
 Cell *p;
 int i;

 for (i = n1; i <= n2; i++) {
  p = fldtab[i];
  if (freeable(p))
   xfree(p->sval);
  p->sval = "";
  p->tval = FLD | STR | DONTFREE;
 }
}

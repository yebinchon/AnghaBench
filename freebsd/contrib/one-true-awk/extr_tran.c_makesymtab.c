
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int ** tab; scalar_t__ nelem; } ;
typedef int Cell ;
typedef TYPE_1__ Array ;


 int FATAL (char*) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ malloc (int) ;

Array *makesymtab(int n)
{
 Array *ap;
 Cell **tp;

 ap = (Array *) malloc(sizeof(Array));
 tp = (Cell **) calloc(n, sizeof(Cell *));
 if (ap == ((void*)0) || tp == ((void*)0))
  FATAL("out of space in makesymtab");
 ap->nelem = 0;
 ap->size = n;
 ap->tab = tp;
 return(ap);
}

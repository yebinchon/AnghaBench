
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int csub; int ctype; } ;
struct TYPE_7__ {int ntype; } ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ Cell ;


 int NVALUE ;
 int OCELL ;
 TYPE_1__* node1 (int ,TYPE_1__*) ;

Node *celltonode(Cell *a, int b)
{
 Node *x;

 a->ctype = OCELL;
 a->csub = b;
 x = node1(0, (Node *) a);
 x->ntype = NVALUE;
 return(x);
}

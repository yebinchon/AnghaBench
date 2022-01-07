
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ntype; } ;
typedef TYPE_1__ Node ;


 int NEXPR ;
 TYPE_1__* node4 (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

Node *op4(int a, Node *b, Node *c, Node *d, Node *e)
{
 Node *x;

 x = node4(a,b,c,d,e);
 x->ntype = NEXPR;
 return(x);
}

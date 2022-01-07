
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ntype; } ;
typedef TYPE_1__ Node ;


 int NSTAT ;
 TYPE_1__* node3 (int,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

Node *stat3(int a, Node *b, Node *c, Node *d)
{
 Node *x;

 x = node3(a,b,c,d);
 x->ntype = NSTAT;
 return(x);
}

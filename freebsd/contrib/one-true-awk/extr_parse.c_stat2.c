
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ntype; } ;
typedef TYPE_1__ Node ;


 int NSTAT ;
 TYPE_1__* node2 (int,TYPE_1__*,TYPE_1__*) ;

Node *stat2(int a, Node *b, Node *c)
{
 Node *x;

 x = node2(a,b,c);
 x->ntype = NSTAT;
 return(x);
}

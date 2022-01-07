
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ntype; } ;
typedef TYPE_1__ Node ;


 int NSTAT ;
 TYPE_1__* node1 (int,TYPE_1__*) ;

Node *stat1(int a, Node *b)
{
 Node *x;

 x = node1(a,b);
 x->ntype = NSTAT;
 return(x);
}

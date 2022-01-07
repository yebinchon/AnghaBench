
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nobj; struct TYPE_6__** narg; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* nodealloc (int) ;

Node *node2(int a, Node *b, Node *c)
{
 Node *x;

 x = nodealloc(2);
 x->nobj = a;
 x->narg[0] = b;
 x->narg[1] = c;
 return(x);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nobj; struct TYPE_5__** narg; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* nodealloc (int) ;

Node *node1(int a, Node *b)
{
 Node *x;

 x = nodealloc(1);
 x->nobj = a;
 x->narg[0]=b;
 return(x);
}

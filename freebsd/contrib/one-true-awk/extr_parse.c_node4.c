
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nobj; struct TYPE_8__** narg; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* nodealloc (int) ;

Node *node4(int a, Node *b, Node *c, Node *d, Node *e)
{
 Node *x;

 x = nodealloc(4);
 x->nobj = a;
 x->narg[0] = b;
 x->narg[1] = c;
 x->narg[2] = d;
 x->narg[3] = e;
 return(x);
}

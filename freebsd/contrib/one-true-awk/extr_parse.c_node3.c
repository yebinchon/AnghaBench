
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nobj; struct TYPE_7__** narg; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* nodealloc (int) ;

Node *node3(int a, Node *b, Node *c, Node *d)
{
 Node *x;

 x = nodealloc(3);
 x->nobj = a;
 x->narg[0] = b;
 x->narg[1] = c;
 x->narg[2] = d;
 return(x);
}

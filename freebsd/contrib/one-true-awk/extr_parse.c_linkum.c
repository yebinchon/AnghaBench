
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* nnext; } ;
typedef TYPE_1__ Node ;


 scalar_t__ errorflag ;

Node *linkum(Node *a, Node *b)
{
 Node *c;

 if (errorflag)
  return a;
 if (a == ((void*)0))
  return(b);
 else if (b == ((void*)0))
  return(a);
 for (c = a; c->nnext != ((void*)0); c = c->nnext)
  ;
 c->nnext = b;
 return(a);
}

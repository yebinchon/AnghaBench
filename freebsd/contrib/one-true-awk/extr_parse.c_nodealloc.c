
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lineno; int * nnext; } ;
typedef TYPE_1__ Node ;


 int FATAL (char*) ;
 int lineno ;
 scalar_t__ malloc (int) ;

Node *nodealloc(int n)
{
 Node *x;

 x = (Node *) malloc(sizeof(Node) + (n-1)*sizeof(Node *));
 if (x == ((void*)0))
  FATAL("out of space in nodealloc");
 x->nnext = ((void*)0);
 x->lineno = lineno;
 return(x);
}

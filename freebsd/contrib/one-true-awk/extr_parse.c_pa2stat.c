
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ntype; } ;
typedef TYPE_1__ Node ;


 int NSTAT ;
 scalar_t__ PA2NUM ;
 int PASTAT2 ;
 int SYNTAX (char*,scalar_t__) ;
 int itonp (int ) ;
 TYPE_1__* node4 (int ,TYPE_1__*,TYPE_1__*,TYPE_1__*,int ) ;
 int paircnt ;

Node *pa2stat(Node *a, Node *b, Node *c)
{
 Node *x;

 x = node4(PASTAT2, a, b, c, itonp(paircnt));
 if (paircnt++ >= PA2NUM)
  SYNTAX( "limited to %d pat,pat statements", PA2NUM );
 x->ntype = NSTAT;
 return(x);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ tok; struct roff_node* child; struct roff_node* next; } ;


 scalar_t__ MDOC_An ;

__attribute__((used)) static int
child_an(const struct roff_node *n)
{

 for (n = n->child; n != ((void*)0); n = n->next)
  if ((n->tok == MDOC_An && n->child != ((void*)0)) || child_an(n))
   return 1;
 return 0;
}

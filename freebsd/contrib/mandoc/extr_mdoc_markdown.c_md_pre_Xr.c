
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {struct roff_node* next; struct roff_node* child; } ;


 int MD_spc ;
 int md_node (struct roff_node*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Xr(struct roff_node *n)
{
 n = n->child;
 if (n == ((void*)0))
  return 0;
 md_node(n);
 n = n->next;
 if (n == ((void*)0))
  return 0;
 outflags &= ~MD_spc;
 md_word("(");
 md_node(n);
 md_word(")");
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ tok; struct roff_node* next; struct roff_node* child; } ;


 scalar_t__ MDOC_Fa ;
 int MD_spc ;
 int md_node (struct roff_node*) ;
 int md_rawword (char*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Fa(struct roff_node *n)
{
 int am_Fa;

 am_Fa = n->tok == MDOC_Fa;

 if (am_Fa)
  n = n->child;

 while (n != ((void*)0)) {
  md_rawword("*");
  outflags &= ~MD_spc;
  md_node(n);
  outflags &= ~MD_spc;
  md_rawword("*");
  if ((n = n->next) != ((void*)0))
   md_word(",");
 }
 return 0;
}

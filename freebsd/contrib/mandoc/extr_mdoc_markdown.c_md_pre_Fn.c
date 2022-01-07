
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {struct roff_node* next; struct roff_node* child; } ;


 int MD_spc ;
 int md_node (struct roff_node*) ;
 int md_pre_Fa (struct roff_node*) ;
 int md_pre_syn (struct roff_node*) ;
 int md_rawword (char*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Fn(struct roff_node *n)
{
 md_pre_syn(n);

 if ((n = n->child) == ((void*)0))
  return 0;

 md_rawword("**");
 outflags &= ~MD_spc;
 md_node(n);
 outflags &= ~MD_spc;
 md_rawword("**");
 outflags &= ~MD_spc;
 md_word("(");

 if ((n = n->next) != ((void*)0))
  md_pre_Fa(n);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; struct roff_node* next; int string; struct roff_node* prev; struct roff_node* last; struct roff_node* child; } ;


 int MD_spc ;
 int NODE_DELIMC ;
 int md_rawword (char*) ;
 int md_uri (int ) ;
 int md_word (int ) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Lk(struct roff_node *n)
{
 const struct roff_node *link, *descr, *punct;

 if ((link = n->child) == ((void*)0))
  return 0;


 punct = n->last;
 while (punct != link && punct->flags & NODE_DELIMC)
  punct = punct->prev;
 punct = punct->next;


 descr = link->next;
 if (descr == punct)
  descr = link;
 md_rawword("[");
 outflags &= ~MD_spc;
 do {
  md_word(descr->string);
  descr = descr->next;
 } while (descr != punct);
 outflags &= ~MD_spc;


 md_rawword("](");
 md_uri(link->string);
 outflags &= ~MD_spc;
 md_rawword(")");


 while (punct != ((void*)0)) {
  md_word(punct->string);
  punct = punct->next;
 }
 return 0;
}

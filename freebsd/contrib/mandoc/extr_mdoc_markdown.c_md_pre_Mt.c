
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {struct roff_node* next; int string; struct roff_node* child; } ;


 int MD_spc ;
 int md_rawword (char*) ;
 int md_uri (int ) ;
 int md_word (int ) ;
 int outcount ;
 int outflags ;
 int putchar (char) ;

__attribute__((used)) static int
md_pre_Mt(struct roff_node *n)
{
 const struct roff_node *nch;

 md_rawword("[");
 outflags &= ~MD_spc;
 for (nch = n->child; nch != ((void*)0); nch = nch->next)
  md_word(nch->string);
 outflags &= ~MD_spc;
 md_rawword("](mailto:");
 for (nch = n->child; nch != ((void*)0); nch = nch->next) {
  md_uri(nch->string);
  if (nch->next != ((void*)0)) {
   putchar(' ');
   outcount++;
  }
 }
 outflags &= ~MD_spc;
 md_rawword(")");
 return 0;
}

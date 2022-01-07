
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; } ;


 int MD_spc ;
 int NODE_SYNPRETTY ;
 int md_pre_syn (struct roff_node*) ;
 int md_rawword (char*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_In(struct roff_node *n)
{
 if (n->flags & NODE_SYNPRETTY) {
  md_pre_syn(n);
  md_rawword("**");
  outflags &= ~MD_spc;
  md_word("#include <");
 } else {
  md_word("<");
  outflags &= ~MD_spc;
  md_rawword("*");
 }
 outflags &= ~MD_spc;
 return 1;
}

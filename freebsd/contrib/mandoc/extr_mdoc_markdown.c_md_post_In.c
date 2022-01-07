
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; } ;


 int MD_nl ;
 int MD_spc ;
 int NODE_SYNPRETTY ;
 int md_rawword (char*) ;
 int outflags ;

__attribute__((used)) static void
md_post_In(struct roff_node *n)
{
 if (n->flags & NODE_SYNPRETTY) {
  outflags &= ~MD_spc;
  md_rawword(">**");
  outflags |= MD_nl;
 } else {
  outflags &= ~MD_spc;
  md_rawword("*>");
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; } ;


 int MD_sp ;
 int NODE_SYNPRETTY ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static void
md_post_Fn(struct roff_node *n)
{
 md_word(")");
 if (n->flags & NODE_SYNPRETTY) {
  md_word(";");
  outflags |= MD_sp;
 }
}

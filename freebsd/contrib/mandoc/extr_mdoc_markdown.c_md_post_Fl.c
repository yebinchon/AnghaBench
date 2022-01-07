
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {TYPE_1__* next; int * child; } ;
struct TYPE_2__ {scalar_t__ type; int flags; } ;


 int MD_spc ;
 int NODE_LINE ;
 scalar_t__ ROFFT_TEXT ;
 int md_post_raw (struct roff_node*) ;
 int outflags ;

__attribute__((used)) static void
md_post_Fl(struct roff_node *n)
{
 md_post_raw(n);
 if (n->child == ((void*)0) && n->next != ((void*)0) &&
     n->next->type != ROFFT_TEXT && !(n->next->flags & NODE_LINE))
  outflags &= ~MD_spc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {TYPE_1__* next; } ;
struct TYPE_2__ {int flags; } ;


 int MD_spc ;
 int NODE_LINE ;
 int outflags ;

__attribute__((used)) static void
md_post_Pf(struct roff_node *n)
{
 if (n->next != ((void*)0) && (n->next->flags & NODE_LINE) == 0)
  outflags &= ~MD_spc;
}

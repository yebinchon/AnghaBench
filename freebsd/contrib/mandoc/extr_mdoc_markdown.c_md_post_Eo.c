
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {scalar_t__ end; TYPE_2__* parent; int * child; } ;
struct TYPE_6__ {int * child; } ;
struct TYPE_5__ {TYPE_3__* tail; TYPE_1__* head; } ;
struct TYPE_4__ {int * child; } ;


 scalar_t__ ENDBODY_NOT ;
 int MD_spc ;
 int outflags ;

__attribute__((used)) static void
md_post_Eo(struct roff_node *n)
{
 if (n->end != ENDBODY_NOT) {
  outflags |= MD_spc;
  return;
 }

 if (n->child == ((void*)0) && n->parent->head->child == ((void*)0))
  return;

 if (n->parent->tail != ((void*)0) && n->parent->tail->child != ((void*)0))
  outflags &= ~MD_spc;
        else
  outflags |= MD_spc;
}

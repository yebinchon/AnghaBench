
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct roff_node {scalar_t__ end; TYPE_4__* parent; TYPE_2__* child; } ;
struct TYPE_8__ {TYPE_3__* tail; TYPE_1__* head; } ;
struct TYPE_7__ {int * child; } ;
struct TYPE_6__ {scalar_t__ end; } ;
struct TYPE_5__ {int * child; } ;


 scalar_t__ ENDBODY_NOT ;
 int MD_nl ;
 int MD_spc ;
 int md_preword () ;
 int outflags ;

__attribute__((used)) static int
md_pre_Eo(struct roff_node *n)
{
 if (n->end == ENDBODY_NOT &&
     n->parent->head->child == ((void*)0) &&
     n->child != ((void*)0) &&
     n->child->end != ENDBODY_NOT)
  md_preword();
 else if (n->end != ENDBODY_NOT ? n->child != ((void*)0) :
     n->parent->head->child != ((void*)0) && (n->child != ((void*)0) ||
     (n->parent->tail != ((void*)0) && n->parent->tail->child != ((void*)0))))
  outflags &= ~(MD_spc | MD_nl);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {int gsize; } ;
struct eqn_box {struct eqn_box* last; struct eqn_box* first; struct eqn_box* prev; struct eqn_box* next; int size; int font; struct eqn_box* parent; int args; } ;


 struct eqn_box* eqn_box_new () ;

__attribute__((used)) static struct eqn_box *
eqn_box_alloc(struct eqn_node *ep, struct eqn_box *parent)
{
 struct eqn_box *bp;

 bp = eqn_box_new();
 bp->parent = parent;
 bp->parent->args++;
 bp->font = bp->parent->font;
 bp->size = ep->gsize;

 if (((void*)0) != parent->first) {
  parent->last->next = bp;
  bp->prev = parent->last;
 } else
  parent->first = bp;

 parent->last = bp;
 return bp;
}

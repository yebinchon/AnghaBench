
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {int dummy; } ;
struct eqn_box {int args; int expectargs; struct eqn_box* parent; int * next; struct eqn_box* first; struct eqn_box* last; int type; struct eqn_box* prev; } ;


 int EQN_SUBEXPR ;
 int assert (int) ;
 struct eqn_box* eqn_box_alloc (struct eqn_node*,struct eqn_box*) ;

__attribute__((used)) static struct eqn_box *
eqn_box_makebinary(struct eqn_node *ep, struct eqn_box *parent)
{
 struct eqn_box *b, *newb;

 assert(((void*)0) != parent->last);
 b = parent->last;
 if (parent->last == parent->first)
  parent->first = ((void*)0);
 parent->args--;
 parent->last = b->prev;
 b->prev = ((void*)0);
 newb = eqn_box_alloc(ep, parent);
 newb->type = EQN_SUBEXPR;
 newb->expectargs = 2;
 newb->args = 1;
 newb->first = newb->last = b;
 newb->first->next = ((void*)0);
 b->parent = newb;
 return newb;
}

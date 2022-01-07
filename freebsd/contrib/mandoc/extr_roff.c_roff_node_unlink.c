
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {struct roff_node* prev; struct roff_node* parent; struct roff_node* last; struct roff_node* next; struct roff_node* child; } ;
struct TYPE_2__ {struct roff_node* first; } ;
struct roff_man {TYPE_1__ meta; int next; struct roff_node* last; } ;


 int ROFF_NEXT_CHILD ;
 int ROFF_NEXT_SIBLING ;

void
roff_node_unlink(struct roff_man *man, struct roff_node *n)
{



 if (n->prev)
  n->prev->next = n->next;
 if (n->next)
  n->next->prev = n->prev;



 if (n->parent != ((void*)0)) {
  if (n->parent->child == n)
   n->parent->child = n->next;
  if (n->parent->last == n)
   n->parent->last = n->prev;
 }



 if (man == ((void*)0))
  return;
 if (man->last == n) {
  if (n->prev == ((void*)0)) {
   man->last = n->parent;
   man->next = ROFF_NEXT_CHILD;
  } else {
   man->last = n->prev;
   man->next = ROFF_NEXT_SIBLING;
  }
 }
 if (man->meta.first == n)
  man->meta.first = ((void*)0);
}

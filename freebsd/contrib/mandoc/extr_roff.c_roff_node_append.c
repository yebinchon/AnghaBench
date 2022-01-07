
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; struct roff_node* parent; int norm; struct roff_node* tail; struct roff_node* body; int end; struct roff_node* head; struct roff_node* child; struct roff_node* last; struct roff_node* prev; struct roff_node* next; } ;
struct roff_man {int next; struct roff_node* last; } ;


 int ENDBODY_NOT ;
 scalar_t__ ROFFT_BLOCK ;





 int abort () ;
 int assert (int) ;

void
roff_node_append(struct roff_man *man, struct roff_node *n)
{

 switch (man->next) {
 case 128:
  if (man->last->next != ((void*)0)) {
   n->next = man->last->next;
   man->last->next->prev = n;
  } else
   man->last->parent->last = n;
  man->last->next = n;
  n->prev = man->last;
  n->parent = man->last->parent;
  break;
 case 129:
  if (man->last->child != ((void*)0)) {
   n->next = man->last->child;
   man->last->child->prev = n;
  } else
   man->last->last = n;
  man->last->child = n;
  n->parent = man->last;
  break;
 default:
  abort();
 }
 man->last = n;

 switch (n->type) {
 case 131:
  n->parent->head = n;
  break;
 case 132:
  if (n->end != ENDBODY_NOT)
   return;
  n->parent->body = n;
  break;
 case 130:
  n->parent->tail = n;
  break;
 default:
  return;
 }






 n->norm = n->parent->norm;
 assert(n->parent->type == ROFFT_BLOCK);
}

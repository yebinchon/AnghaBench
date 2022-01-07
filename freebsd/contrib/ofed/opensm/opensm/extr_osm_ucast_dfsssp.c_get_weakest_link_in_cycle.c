
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; TYPE_2__* linklist; } ;
typedef TYPE_1__ cdg_node_t ;
struct TYPE_6__ {scalar_t__ num_pairs; scalar_t__ removed; struct TYPE_6__* next; TYPE_1__* node; } ;
typedef TYPE_2__ cdg_link_t ;


 scalar_t__ GRAY ;
 void* UNKNOWN ;

__attribute__((used)) static cdg_link_t *get_weakest_link_in_cycle(cdg_node_t * cycle)
{
 cdg_node_t *current = cycle, *node_with_weakest_link = ((void*)0);
 cdg_link_t *link = ((void*)0), *weakest_link = ((void*)0);

 link = current->linklist;
 while (link) {
  if (link->node->status == GRAY) {
   weakest_link = link;
   node_with_weakest_link = current;
   current = link->node;
   break;
  }
  link = link->next;
 }

 while (1) {
  current->status = UNKNOWN;
  link = current->linklist;
  while (link) {
   if (link->node->status == GRAY) {
    if ((link->num_pairs - link->removed) <
        (weakest_link->num_pairs -
         weakest_link->removed)) {
     weakest_link = link;
     node_with_weakest_link = current;
    }
    current = link->node;
    break;
   }
   link = link->next;
  }

  if (current == cycle) {
   current->status = UNKNOWN;
   break;
  }
 }

 if (node_with_weakest_link->linklist == weakest_link) {
  node_with_weakest_link->linklist = weakest_link->next;
 } else {
  link = node_with_weakest_link->linklist;
  while (link) {
   if (link->next == weakest_link) {
    link->next = weakest_link->next;
    break;
   }
   link = link->next;
  }
 }

 return weakest_link;
}

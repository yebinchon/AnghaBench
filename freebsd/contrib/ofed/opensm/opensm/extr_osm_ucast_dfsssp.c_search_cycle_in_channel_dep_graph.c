
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ status; struct TYPE_8__* pre; TYPE_2__* linklist; } ;
typedef TYPE_1__ cdg_node_t ;
struct TYPE_9__ {struct TYPE_9__* next; scalar_t__ removed; scalar_t__ num_pairs; int * srcdest_pairs; TYPE_1__* node; } ;
typedef TYPE_2__ cdg_link_t ;


 scalar_t__ BLACK ;
 scalar_t__ GRAY ;
 scalar_t__ UNKNOWN ;
 int free (int *) ;
 TYPE_1__* get_next_cdg_node (TYPE_1__*) ;

__attribute__((used)) static cdg_node_t *search_cycle_in_channel_dep_graph(cdg_node_t * cdg,
           cdg_node_t * start_node)
{
 cdg_node_t *cycle = ((void*)0);
 cdg_node_t *current = start_node, *next_node = ((void*)0), *tmp = ((void*)0);
 cdg_link_t *link = ((void*)0);

 while (current) {
  current->status = GRAY;
  link = current->linklist;
  next_node = ((void*)0);
  while (link) {
   if (link->node->status == UNKNOWN) {
    next_node = link->node;
    break;
   }
   if (link->node->status == GRAY) {
    cycle = link->node;
    goto Exit;
   }
   link = link->next;
  }
  if (next_node) {
   next_node->pre = current;
   current = next_node;
  } else {

   current->status = BLACK;


   link = current->linklist;
   while (link) {
    if (link->num_pairs)
     free(link->srcdest_pairs);
    link->srcdest_pairs = ((void*)0);
    link->num_pairs = 0;
    link->removed = 0;
    link = link->next;
   }

   if (current->pre) {
    tmp = current;
    current = current->pre;
    tmp->pre = ((void*)0);
   } else {

    current = get_next_cdg_node(cdg);
    if (!current)
     break;
   }
  }
 }

Exit:
 return cycle;
}

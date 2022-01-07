
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* srcdest_pairs; scalar_t__ num_pairs; struct TYPE_5__* next; struct TYPE_5__* linklist; } ;
typedef TYPE_1__ cdg_node_t ;
typedef TYPE_1__ cdg_link_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void cdg_node_dealloc(cdg_node_t * node)
{
 cdg_link_t *link = node->linklist, *tmp = ((void*)0);


 while (link) {
  tmp = link;
  link = link->next;

  if (tmp->num_pairs)
   free(tmp->srcdest_pairs);
  free(tmp);
 }

 free(node);
}

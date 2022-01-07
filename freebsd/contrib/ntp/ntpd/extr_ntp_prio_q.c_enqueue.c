
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* get_order ) (TYPE_2__*,TYPE_2__*) ;int no_of_elements; TYPE_2__* front; } ;
typedef TYPE_1__ queue ;
struct TYPE_8__ {struct TYPE_8__* node_next; } ;
typedef TYPE_2__ node ;


 scalar_t__ stub1 (TYPE_2__*,TYPE_2__*) ;

queue *enqueue(
 queue * my_queue,
 void * my_node
 )
{
 node *new_node = (node *)my_node - 1;
 node *i = ((void*)0);
 node *j = my_queue->front;

 while (j != ((void*)0) &&
        (*my_queue->get_order)(new_node + 1, j + 1) > 0) {
  i = j;
  j = j->node_next;
 }

 if (i == ((void*)0)) {
  new_node->node_next = my_queue->front;
  my_queue->front = new_node;
 } else {
  new_node->node_next = i->node_next;
  i->node_next = new_node;
 }

 ++my_queue->no_of_elements;
 return my_queue;
}

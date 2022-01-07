
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ no_of_elements; int * front; int get_order; } ;
typedef TYPE_1__ queue ;
typedef int q_order_func ;


 TYPE_1__* debug_erealloc (int *,int,char const*,int) ;
 TYPE_1__* emalloc (int) ;

queue *debug_create_priority_queue(
 q_order_func get_order




 )
{
 queue *my_queue;


 my_queue = emalloc(sizeof(queue));




 my_queue->get_order = get_order;
 my_queue->front = ((void*)0);
 my_queue->no_of_elements = 0;

 return my_queue;
}

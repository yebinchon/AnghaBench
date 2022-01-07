
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct camq {TYPE_1__** queue_array; int entries; } ;
struct TYPE_3__ {scalar_t__ priority; } ;


 int heap_down (TYPE_1__**,int,int ) ;
 int heap_up (TYPE_1__**,int) ;

void
camq_change_priority(struct camq *queue, int index, u_int32_t new_priority)
{
 if (new_priority > queue->queue_array[index]->priority) {
  queue->queue_array[index]->priority = new_priority;
  heap_down(queue->queue_array, index, queue->entries);
 } else {

  queue->queue_array[index]->priority = new_priority;
  heap_up(queue->queue_array, index);
 }
}

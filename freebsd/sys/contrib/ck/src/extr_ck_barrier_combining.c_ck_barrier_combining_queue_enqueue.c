
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_queue {struct ck_barrier_combining_group* tail; struct ck_barrier_combining_group* head; } ;
struct ck_barrier_combining_group {struct ck_barrier_combining_group* next; } ;



__attribute__((used)) static void
ck_barrier_combining_queue_enqueue(struct ck_barrier_combining_queue *queue,
    struct ck_barrier_combining_group *node_value)
{

 node_value->next = ((void*)0);
 if (queue->head == ((void*)0)) {
  queue->head = queue->tail = node_value;
  return;
 }

 queue->tail->next = node_value;
 queue->tail = node_value;

 return;
}

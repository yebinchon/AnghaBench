
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_queue {struct ck_barrier_combining_group* head; } ;
struct ck_barrier_combining_group {struct ck_barrier_combining_group* next; } ;



__attribute__((used)) static struct ck_barrier_combining_group *
ck_barrier_combining_queue_dequeue(struct ck_barrier_combining_queue *queue)
{
 struct ck_barrier_combining_group *front = ((void*)0);

 if (queue->head != ((void*)0)) {
  front = queue->head;
  queue->head = queue->head->next;
 }

 return front;
}

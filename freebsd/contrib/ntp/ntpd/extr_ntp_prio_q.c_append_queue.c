
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue ;


 int dequeue (int *) ;
 int destroy_queue (int *) ;
 int empty (int *) ;
 int enqueue (int *,int ) ;

void append_queue(
 queue *q1,
 queue *q2
 )
{
 while (!empty(q2))
  enqueue(q1, dequeue(q2));
 destroy_queue(q2);
}

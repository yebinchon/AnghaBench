
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write; int read; int size; int push; int ** storage; int pop; int initialized; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;
typedef int VCHIQ_HEADER_T ;


 int current ;
 scalar_t__ down_interruptible (int *) ;
 int flush_signals (int ) ;
 int smp_mb () ;
 int smp_wmb () ;
 int up (int *) ;

void vchiu_queue_push(VCHIU_QUEUE_T *queue, VCHIQ_HEADER_T *header)
{
 if (!queue->initialized)
  return;

 while (queue->write == queue->read + queue->size) {
  if (down_interruptible(&queue->pop) != 0) {
   flush_signals(current);
  }
 }





 smp_mb();

 queue->storage[queue->write & (queue->size - 1)] = header;





 smp_wmb();

 queue->write++;

 up(&queue->push);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write; int read; int size; int ** storage; int push; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;
typedef int VCHIQ_HEADER_T ;


 int current ;
 scalar_t__ down_interruptible (int *) ;
 int flush_signals (int ) ;
 int smp_rmb () ;
 int up (int *) ;

VCHIQ_HEADER_T *vchiu_queue_peek(VCHIU_QUEUE_T *queue)
{
 while (queue->write == queue->read) {
  if (down_interruptible(&queue->push) != 0) {
   flush_signals(current);
  }
 }

 up(&queue->push);





 smp_rmb();

 return queue->storage[queue->read & (queue->size - 1)];
}

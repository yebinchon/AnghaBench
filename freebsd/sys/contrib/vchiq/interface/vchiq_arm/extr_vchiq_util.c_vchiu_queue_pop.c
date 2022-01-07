
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write; int read; int size; int pop; int ** storage; int push; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;
typedef int VCHIQ_HEADER_T ;


 int current ;
 scalar_t__ down_interruptible (int *) ;
 int flush_signals (int ) ;
 int smp_mb () ;
 int smp_rmb () ;
 int up (int *) ;

VCHIQ_HEADER_T *vchiu_queue_pop(VCHIU_QUEUE_T *queue)
{
 VCHIQ_HEADER_T *header;

 while (queue->write == queue->read) {
  if (down_interruptible(&queue->push) != 0) {
   flush_signals(current);
  }
 }





 smp_rmb();

 header = queue->storage[queue->read & (queue->size - 1)];





 smp_mb();

 queue->read++;

 up(&queue->pop);

 return header;
}

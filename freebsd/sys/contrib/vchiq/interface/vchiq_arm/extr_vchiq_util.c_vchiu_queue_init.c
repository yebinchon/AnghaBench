
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int initialized; int * storage; int push; int pop; scalar_t__ write; scalar_t__ read; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;
typedef int VCHIQ_HEADER_T ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int _sema_init (int *,int ) ;
 int is_pow2 (int) ;
 int * kzalloc (int,int ) ;
 int vchiu_queue_delete (TYPE_1__*) ;

int vchiu_queue_init(VCHIU_QUEUE_T *queue, int size)
{
 WARN_ON(!is_pow2(size));

 queue->size = size;
 queue->read = 0;
 queue->write = 0;
 queue->initialized = 1;

 _sema_init(&queue->pop, 0);
 _sema_init(&queue->push, 0);

 queue->storage = kzalloc(size * sizeof(VCHIQ_HEADER_T *), GFP_KERNEL);
 if (queue->storage == ((void*)0)) {
  vchiu_queue_delete(queue);
  return 0;
 }
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * storage; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;


 int kfree (int *) ;

void vchiu_queue_delete(VCHIU_QUEUE_T *queue)
{
 if (queue->storage != ((void*)0))
  kfree(queue->storage);
}

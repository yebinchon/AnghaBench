
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ remove; scalar_t__ remote_notify; scalar_t__ process; scalar_t__ remote_insert; scalar_t__ local_insert; } ;
typedef TYPE_1__ VCHIQ_BULK_QUEUE_T ;



__attribute__((used)) static void
init_bulk_queue(VCHIQ_BULK_QUEUE_T *queue)
{
 queue->local_insert = 0;
 queue->remote_insert = 0;
 queue->process = 0;
 queue->remote_notify = 0;
 queue->remove = 0;
}

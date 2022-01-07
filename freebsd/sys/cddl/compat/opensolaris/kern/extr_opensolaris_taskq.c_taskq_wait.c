
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;


 int taskqueue_quiesce (int ) ;

void
taskq_wait(taskq_t *tq)
{
 taskqueue_quiesce(tq->tq_queue);
}

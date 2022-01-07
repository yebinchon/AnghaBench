
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int taskqid_t ;
struct TYPE_3__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;


 int taskqueue_drain_all (int ) ;

void
taskq_wait_id(taskq_t *tq, taskqid_t id)
{
 taskqueue_drain_all(tq->tq_queue);
}

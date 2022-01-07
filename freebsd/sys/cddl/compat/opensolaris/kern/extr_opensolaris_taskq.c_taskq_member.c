
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;
typedef int kthread_t ;


 int taskqueue_member (int ,int *) ;

int
taskq_member(taskq_t *tq, kthread_t *thread)
{

 return (taskqueue_member(tq->tq_queue, thread));
}

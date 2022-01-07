
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;


 int kmem_free (TYPE_1__*,int) ;
 int taskqueue_free (int ) ;

void
taskq_destroy(taskq_t *tq)
{

 taskqueue_free(tq->tq_queue);
 kmem_free(tq, sizeof(*tq));
}

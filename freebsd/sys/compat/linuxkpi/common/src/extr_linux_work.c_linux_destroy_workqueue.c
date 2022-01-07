
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int exec_mtx; int taskqueue; int draining; } ;


 int atomic_inc (int *) ;
 int drain_workqueue (struct workqueue_struct*) ;
 int kfree (struct workqueue_struct*) ;
 int mtx_destroy (int *) ;
 int taskqueue_free (int ) ;

void
linux_destroy_workqueue(struct workqueue_struct *wq)
{
 atomic_inc(&wq->draining);
 drain_workqueue(wq);
 taskqueue_free(wq->taskqueue);
 mtx_destroy(&wq->exec_mtx);
 kfree(wq);
}

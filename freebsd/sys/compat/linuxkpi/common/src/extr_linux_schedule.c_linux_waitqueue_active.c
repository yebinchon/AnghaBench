
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int task_list; } ;
typedef TYPE_1__ wait_queue_head_t ;


 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool
linux_waitqueue_active(wait_queue_head_t *wqh)
{
 bool ret;

 spin_lock(&wqh->lock);
 ret = !list_empty(&wqh->task_list);
 spin_unlock(&wqh->lock);
 return (ret);
}

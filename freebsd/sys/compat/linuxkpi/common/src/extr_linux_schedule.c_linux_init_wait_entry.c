
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int task_list; int func; int private; } ;
typedef TYPE_1__ wait_queue_t ;


 int INIT_LIST_HEAD (int *) ;
 int autoremove_wake_function ;
 int current ;
 int memset (TYPE_1__*,int ,int) ;

void
linux_init_wait_entry(wait_queue_t *wq, int flags)
{

 memset(wq, 0, sizeof(*wq));
 wq->flags = flags;
 wq->private = current;
 wq->func = autoremove_wake_function;
 INIT_LIST_HEAD(&wq->task_list);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_transfer; } ;
struct TYPE_2__ {int * env; int * worker; int * cp; int * timer; } ;


 int comm_point_delete (int *) ;
 int comm_timer_delete (int *) ;

__attribute__((used)) static void
xfr_transfer_disown(struct auth_xfer* xfr)
{

 comm_timer_delete(xfr->task_transfer->timer);
 xfr->task_transfer->timer = ((void*)0);

 comm_point_delete(xfr->task_transfer->cp);
 xfr->task_transfer->cp = ((void*)0);

 xfr->task_transfer->worker = ((void*)0);
 xfr->task_transfer->env = ((void*)0);
}

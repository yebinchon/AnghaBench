
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_probe; } ;
struct TYPE_2__ {int * env; int * worker; int * cp; int * timer; } ;


 int comm_point_delete (int *) ;
 int comm_timer_delete (int *) ;

__attribute__((used)) static void
xfr_probe_disown(struct auth_xfer* xfr)
{

 comm_timer_delete(xfr->task_probe->timer);
 xfr->task_probe->timer = ((void*)0);

 comm_point_delete(xfr->task_probe->cp);
 xfr->task_probe->cp = ((void*)0);

 xfr->task_probe->worker = ((void*)0);
 xfr->task_probe->env = ((void*)0);
}

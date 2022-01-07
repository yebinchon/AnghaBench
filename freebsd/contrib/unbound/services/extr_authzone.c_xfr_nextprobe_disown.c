
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_nextprobe; } ;
struct TYPE_2__ {int * env; int * worker; scalar_t__ next_probe; int * timer; } ;


 int comm_timer_delete (int *) ;

__attribute__((used)) static void
xfr_nextprobe_disown(struct auth_xfer* xfr)
{


 comm_timer_delete(xfr->task_nextprobe->timer);
 xfr->task_nextprobe->timer = ((void*)0);
 xfr->task_nextprobe->next_probe = 0;

 xfr->task_nextprobe->worker = ((void*)0);
 xfr->task_nextprobe->env = ((void*)0);
}

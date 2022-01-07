
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int callout; } ;
struct delayed_work {int work; TYPE_1__ timer; } ;


 int callout_drain (int *) ;
 int linux_work_fn (int *,int) ;

void
linux_delayed_work_fn(void *context, int pending)
{
 struct delayed_work *dwork = context;
 callout_drain(&dwork->timer.callout);

 linux_work_fn(&dwork->work, pending);
}

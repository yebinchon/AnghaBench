
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int expires; int callout; } ;


 int callout_reset_on (int *,int ,int *,struct timer_list*,int) ;
 int linux_timer_callback_wrapper ;
 int linux_timer_jiffies_until (int ) ;

void
add_timer_on(struct timer_list *timer, int cpu)
{

 callout_reset_on(&timer->callout,
     linux_timer_jiffies_until(timer->expires),
     &linux_timer_callback_wrapper, timer, cpu);
}

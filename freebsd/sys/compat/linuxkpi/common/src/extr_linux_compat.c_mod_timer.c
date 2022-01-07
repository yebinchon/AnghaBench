
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int expires; int callout; } ;


 int callout_reset (int *,int ,int *,struct timer_list*) ;
 int linux_timer_callback_wrapper ;
 int linux_timer_jiffies_until (int) ;

void
mod_timer(struct timer_list *timer, int expires)
{

 timer->expires = expires;
 callout_reset(&timer->callout,
     linux_timer_jiffies_until(expires),
     &linux_timer_callback_wrapper, timer);
}

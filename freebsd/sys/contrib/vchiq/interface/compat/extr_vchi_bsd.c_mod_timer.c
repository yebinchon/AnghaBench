
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int mtx; int callout; } ;


 int callout_reset (int *,scalar_t__,int ,struct timer_list*) ;
 scalar_t__ jiffies ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int run_timer ;

void
mod_timer(struct timer_list *t, unsigned long expires)
{
 mtx_lock_spin(&t->mtx);
 callout_reset(&t->callout, expires - jiffies, run_timer, t);
 mtx_unlock_spin(&t->mtx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int expires; } ;


 int mod_timer (struct timer_list*,int ) ;

void
add_timer(struct timer_list *t)
{
 mod_timer(t, t->expires);
}

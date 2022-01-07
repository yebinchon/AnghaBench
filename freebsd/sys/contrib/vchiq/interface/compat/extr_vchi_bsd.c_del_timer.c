
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int del_timer_sync (struct timer_list*) ;

int
del_timer(struct timer_list *t)
{
 del_timer_sync(t);
 return 0;
}

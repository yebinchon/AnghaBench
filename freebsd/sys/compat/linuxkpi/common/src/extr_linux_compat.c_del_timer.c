
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int callout; } ;


 int callout_stop (int *) ;

int
del_timer(struct timer_list *timer)
{

 if (callout_stop(&(timer)->callout) == -1)
  return (0);
 return (1);
}

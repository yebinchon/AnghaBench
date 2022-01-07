
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int callout; } ;


 scalar_t__ callout_drain (int *) ;

int
linux_hrtimer_cancel(struct hrtimer *hrtimer)
{

 return (callout_drain(&hrtimer->callout) > 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef int ktime_t ;


 int linux_hrtimer_start_range_ns (struct hrtimer*,int ,int ) ;

void
linux_hrtimer_start(struct hrtimer *hrtimer, ktime_t time)
{

 linux_hrtimer_start_range_ns(hrtimer, time, 0);
}

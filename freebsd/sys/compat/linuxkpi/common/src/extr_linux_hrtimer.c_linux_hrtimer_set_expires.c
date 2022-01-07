
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int expires; } ;
typedef int ktime_t ;


 int ktime_to_ns (int ) ;

void
linux_hrtimer_set_expires(struct hrtimer *hrtimer, ktime_t time)
{
 hrtimer->expires = ktime_to_ns(time);
}

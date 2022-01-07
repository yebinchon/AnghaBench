
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int mtx; int callout; int precision; } ;
typedef int ktime_t ;
typedef int int64_t ;


 int callout_reset_sbt (int *,int ,int ,int ,struct hrtimer*,int ) ;
 int hrtimer_call_handler ;
 int ktime_to_ns (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nstosbt (int ) ;

void
linux_hrtimer_start_range_ns(struct hrtimer *hrtimer, ktime_t time,
    int64_t nsec)
{

 mtx_lock(&hrtimer->mtx);
 hrtimer->precision = nsec;
 callout_reset_sbt(&hrtimer->callout, nstosbt(ktime_to_ns(time)),
     nstosbt(nsec), hrtimer_call_handler, hrtimer, 0);
 mtx_unlock(&hrtimer->mtx);
}

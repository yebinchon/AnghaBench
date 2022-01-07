
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int mtx; int precision; int callout; } ;
typedef int ktime_t ;


 int callout_reset_sbt (int *,int ,int ,int ,struct hrtimer*,int ) ;
 int hrtimer_call_handler ;
 int ktime_to_ns (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nstosbt (int ) ;

void
linux_hrtimer_forward_now(struct hrtimer *hrtimer, ktime_t interval)
{

 mtx_lock(&hrtimer->mtx);
 callout_reset_sbt(&hrtimer->callout, nstosbt(ktime_to_ns(interval)),
     nstosbt(hrtimer->precision), hrtimer_call_handler, hrtimer, 0);
 mtx_unlock(&hrtimer->mtx);
}

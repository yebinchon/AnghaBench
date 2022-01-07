
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int mtx; int callout; } ;


 int callout_active (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

bool
linux_hrtimer_active(struct hrtimer *hrtimer)
{
 bool ret;

 mtx_lock(&hrtimer->mtx);
 ret = callout_active(&hrtimer->callout);
 mtx_unlock(&hrtimer->mtx);

 return (ret);
}

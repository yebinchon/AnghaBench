
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int (* function ) (struct hrtimer*) ;int callout; int precision; int expires; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_RESTART ;
 int callout_deactivate (int *) ;
 int callout_schedule_sbt (int *,int ,int ,int ) ;
 int nstosbt (int ) ;
 int stub1 (struct hrtimer*) ;

__attribute__((used)) static void
hrtimer_call_handler(void *arg)
{
 struct hrtimer *hrtimer;
 enum hrtimer_restart ret;

 hrtimer = arg;
 ret = hrtimer->function(hrtimer);

 if (ret == HRTIMER_RESTART) {
  callout_schedule_sbt(&hrtimer->callout,
      nstosbt(hrtimer->expires), nstosbt(hrtimer->precision), 0);
 } else {
  callout_deactivate(&hrtimer->callout);
 }
}

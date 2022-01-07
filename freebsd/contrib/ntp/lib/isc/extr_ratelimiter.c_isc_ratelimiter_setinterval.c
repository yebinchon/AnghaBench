
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ state; int lock; int interval; int timer; } ;
typedef TYPE_1__ isc_ratelimiter_t ;
typedef int isc_interval_t ;


 int ISC_FALSE ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 scalar_t__ isc_ratelimiter_ratelimited ;
 int isc_timer_reset (int ,int ,int *,int *,int ) ;
 int isc_timertype_ticker ;

isc_result_t
isc_ratelimiter_setinterval(isc_ratelimiter_t *rl, isc_interval_t *interval) {
 isc_result_t result = ISC_R_SUCCESS;
 LOCK(&rl->lock);
 rl->interval = *interval;



        if (rl->state == isc_ratelimiter_ratelimited) {
  result = isc_timer_reset(rl->timer, isc_timertype_ticker, ((void*)0),
      &rl->interval, ISC_FALSE);
 }
 UNLOCK(&rl->lock);
 return (result);
}
